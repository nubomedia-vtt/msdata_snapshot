#include "gstmsdata.h"

#include "commons/kmselement.h"
#include <gst/gst.h>
#include <gst/video/video.h>
#include <gst/video/gstvideofilter.h>
#include <glib/gstdio.h>
#include <opencv2/opencv.hpp>
#include <cv.h>
#include <memory>



GST_DEBUG_CATEGORY_STATIC (gst_msdata_debug_category);
#define GST_CAT_DEFAULT gst_msdata_debug_category
#define PLUGIN_NAME "msdata"

#define GST_MSDATA_GET_PRIVATE(obj) (    \
    G_TYPE_INSTANCE_GET_PRIVATE (               \
        (obj),                                  \
        GST_TYPE_MSDATA,                 \
        GstmsdataPrivate                  \
                                )               \
                                           )

/* pad templates */

#define VIDEO_SRC_CAPS \
  GST_VIDEO_CAPS_MAKE("{ BGRA }")

#define VIDEO_SINK_CAPS \
  GST_VIDEO_CAPS_MAKE("{ BGRA }")

/* class initialization */

G_DEFINE_TYPE_WITH_CODE (Gstmsdata, gst_msdata,
                         GST_TYPE_VIDEO_FILTER,
                         GST_DEBUG_CATEGORY_INIT (gst_msdata_debug_category,
                             PLUGIN_NAME, 0,
                             "debug category for msdata element") );



static void
gst_msdata_connect_data (Gstmsdata * self, GstElement * tee)
{
  GstElement *identity =  gst_element_factory_make ("identity", NULL);
  GstPad *identity_sink = gst_element_get_static_pad (identity, "sink");

  gst_bin_add (GST_BIN (self), identity);

  kms_element_connect_sink_target (KMS_ELEMENT (self), identity_sink, KMS_ELEMENT_PAD_TYPE_DATA);
  gst_element_link (identity, tee);

  g_signal_connect (identity, "handoff", G_CALLBACK (new_data), self);

  g_object_unref (identity_sink);
}

void new_data (GstElement* object, GstBuffer* buffer, Gstmsdata* self)
{
  GstMapInfo info;
  gchar *msg;

  if (!gst_buffer_map (buffer, &info, GST_MAP_READ)) {
    GST_WARNING_OBJECT (self, "Can not read buffer");
    return;
  }

  msg = g_strndup ((const gchar *) info.data, info.size);
  gst_buffer_unmap (buffer, &info);

  if (msg != NULL) {
    std::cout << "msg: " << msg << std::endl;
    g_free (msg);
  }
}


static GstFlowReturn
gst_msdata_transform_frame_ip (GstVideoFilter *filter,
                                      GstVideoFrame *frame)
{
  return GST_FLOW_OK;
}

static void
gst_msdata_finalize (GObject *object)
{
}

static void
gst_msdata_init (Gstmsdata *
                        msdata)
{
  msdata->priv = GST_MSDATA_GET_PRIVATE(msdata);
  gst_msdata_connect_data (msdata, kms_element_get_data_tee (KMS_ELEMENT (msdata)));
}

static void
gst_msdata_class_init (GstmsdataClass *klass)
{
  std::cout << "gst_msdata_class_init" << std::endl;
  GObjectClass *gobject_class = G_OBJECT_CLASS (klass);
  GstVideoFilterClass *video_filter_class = GST_VIDEO_FILTER_CLASS (klass);

  GST_DEBUG_CATEGORY_INIT (GST_CAT_DEFAULT, PLUGIN_NAME, 0, PLUGIN_NAME);

  gst_element_class_add_pad_template (GST_ELEMENT_CLASS (klass),
                                      gst_pad_template_new ("src", GST_PAD_SRC,
                                          GST_PAD_ALWAYS,
                                          gst_caps_from_string (VIDEO_SRC_CAPS) ) );
  gst_element_class_add_pad_template (GST_ELEMENT_CLASS (klass),
                                      gst_pad_template_new ("sink", GST_PAD_SINK,
                                          GST_PAD_ALWAYS,
                                          gst_caps_from_string (VIDEO_SINK_CAPS) ) );

  gst_element_class_set_static_metadata (GST_ELEMENT_CLASS (klass),
                                      "element definition", "Video/Filter",
                                      "Filter doc",
                                      "Developer");

  gobject_class->finalize = gst_msdata_finalize;

  video_filter_class->transform_frame_ip =
    GST_DEBUG_FUNCPTR (gst_msdata_transform_frame_ip);
}

gboolean
gst_msdata_plugin_init (GstPlugin *plugin)
{
  std::cout << "gst_msdata_plugin_init" << std::endl;
  return gst_element_register (plugin, PLUGIN_NAME, GST_RANK_NONE,
                               GST_TYPE_MSDATA);
}
