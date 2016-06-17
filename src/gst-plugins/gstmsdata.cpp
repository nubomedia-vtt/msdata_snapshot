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

/* the capabilities of the inputs and outputs. */
static GstStaticPadTemplate sink_factory = GST_STATIC_PAD_TEMPLATE ("sink",
								    GST_PAD_SINK,
								    GST_PAD_ALWAYS,
								    GST_STATIC_CAPS (VIDEO_SRC_CAPS)
								    );

static GstStaticPadTemplate src_factory = GST_STATIC_PAD_TEMPLATE ("src",
								   GST_PAD_SRC,
								   GST_PAD_REQUEST,
								   GST_STATIC_CAPS (VIDEO_SRC_CAPS)
								   );


/* class initialization */

G_DEFINE_TYPE_WITH_CODE (Gstmsdata, gst_msdata,
			 //                         GST_TYPE_VIDEO_FILTER,
                         GST_TYPE_BIN,
                         GST_DEBUG_CATEGORY_INIT (gst_msdata_debug_category,
                             PLUGIN_NAME, 0,
                             "debug category for msdata element") );


struct _GstmsdataPrivate
{
  //GstElement *text_overlay;
  GstElement *dataelm;
  GstElement *imgelm;
  GstPad *src, *sink;
};



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

/*
static void
//gst_msdata_connect_data (Gstmsdata * self)
gst_msdata_connect_data (Gstmsdata * self, GstElement * tee)
{
  std::cout << "gst_msdata_connect_data" << std::endl;

  GstElement *identity =  gst_element_factory_make ("identity", NULL);
  GstPad *identity_sink = gst_element_get_static_pad (identity, "sink");

  gst_bin_add (GST_BIN (self), identity);

  kms_element_connect_sink_target (KMS_ELEMENT (self), identity_sink, KMS_ELEMENT_PAD_TYPE_DATA);
  gst_element_link (identity, tee);

  g_signal_connect (identity, "handoff", G_CALLBACK (new_data), self);

  g_object_unref (identity_sink);
}
*/

#if 0
static GstFlowReturn
gst_msdata_transform_frame_ip (GstVideoFilter *filter,
                                      GstVideoFrame *frame)
{
  return GST_FLOW_OK;
}
#endif

#if 0
static void
gst_msdata_finalize (GObject *object)
{
}
#endif

static void
gst_msdata_init (Gstmsdata *msdata)
{
  std::cout << "gst_msdata_init" << std::endl;
  msdata->priv = GST_MSDATA_GET_PRIVATE(msdata);
  std::cout << "gst_msdata_init priv: " << (msdata->priv != NULL ? "ok" : "bizarre") << std::endl;


  std::cout << "create pads" << std::endl;
  msdata->priv->dataelm = gst_element_factory_make ("kmsshowdata", NULL);
  gst_bin_add (GST_BIN (msdata), msdata->priv->dataelm);

  std::cout << "create augmentation" << std::endl;
  msdata->priv->imgelm = gst_element_factory_make ("graphsmetadata", NULL);
  gst_bin_add (GST_BIN (msdata), msdata->priv->imgelm);




  GstPadTemplate *templ;
  GstPad *target;

  std::cout << "create sink" << std::endl;
  target =
  gst_element_get_static_pad (msdata->priv->dataelm, "sink");
 templ = gst_static_pad_template_get (&sink_factory);
  msdata->priv->sink =
    gst_ghost_pad_new_from_template ("sink", target, templ);
  g_object_unref (templ);
  g_object_unref (target);
  gst_element_add_pad (GST_ELEMENT (msdata), msdata->priv->sink);

  std::cout << "create src" << std::endl;
target =
  gst_element_get_static_pad (msdata->priv->imgelm, "src");
 templ = gst_static_pad_template_get (&src_factory);
  msdata->priv->src =
    gst_ghost_pad_new_from_template ("src", target, templ);
  g_object_unref (templ);
  g_object_unref (target);
  gst_element_add_pad (GST_ELEMENT (msdata), msdata->priv->src);

  std::cout << "create link" << std::endl;
  gst_element_link(msdata->priv->dataelm, msdata->priv->imgelm);

  std::cout << "all done" << std::endl;


  //  kms_show_data_connect_data (self, 
  //			      kms_element_get_data_tee (KMS_ELEMENT (msdata)));


#if 0
  std::cout << "JX1" << std::endl;

  GstElement *identity =  gst_element_factory_make ("identity", NULL);
  std::cout << "J2" << (identity != NULL ? "ok" : "bizarre") << std::endl;
  gst_bin_add (GST_BIN (msdata), identity);

  GstPad *identity_sink = gst_element_get_static_pad (identity, "sink");;
  std::cout << "J3" << (identity_sink != NULL ? "ok" : "bizarre") << std::endl;

  //  GstVideoFilterClass *video_filter_class = GST_VIDEO_FILTER_CLASS (msdata->priv);
  //gst_bin_add (GST_BIN (msdata), identity);
  std::cout << "J4" << std::endl;
  //gst_element_link (identity, kms_element_get_data_tee(KMS_ELEMENT(video_filt
  //  er_class)));
std::cout << "J5" << std::endl;
//g_signal_connect (identity, "handoff", G_CALLBACK (new_data), klass);
std::cout << "J6" << std::endl;
//g_object_unref (identity_sink);
#endif

  /*
  GstElement *identity =  gst_element_factory_make ("identity", NULL);
  GstPad *identity_sink = gst_element_get_static_pad (identity, "sink");;
  gst_bin_add (GST_BIN (msdata), identity);
  gst_element_link (identity, kms_element_get_data_tee(KMS_ELEMENT(msdata->priv)));

  g_signal_connect (identity, "handoff", G_CALLBACK (new_data), msdata);

  g_object_unref (identity_sink);
  */

  // gst_msdata_connect_data (msdata, kms_element_get_data_tee (KMS_ELEMENT (msdata->priv)));
  //gst_msdata_connect_data (msdata);
}

static void
gst_msdata_class_init (GstmsdataClass *klass)
{
  std::cout << "gst_msdata_class_init" << std::endl;
  //GObjectClass *gobject_class = G_OBJECT_CLASS (klass);
  //  GstVideoFilterClass *video_filter_class = GST_VIDEO_FILTER_CLASS (klass);

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


  //  gobject_class->finalize = gst_msdata_finalize;

  /*
  video_filter_class->transform_frame_ip =
    GST_DEBUG_FUNCPTR (gst_msdata_transform_frame_ip);
  */

#if 0
  std::cout << "JJ1" << std::endl;

  GstElement *identity =  gst_element_factory_make ("identity", NULL);
  std::cout << "J2" << (identity != NULL ? "ok" : "bizarre") << std::endl;
  //GstPad *identity_sink = gst_element_get_static_pad (identity, "sink");;
  std::cout << "J3" << std::endl;
  //gst_bin_add (GST_BIN (klass), identity);
  std::cout << "J4" << std::endl;
  //gst_element_link (identity, kms_element_get_data_tee(KMS_ELEMENT(video_filter_class)));
  std::cout << "J5" << std::endl;
  //g_signal_connect (identity, "handoff", G_CALLBACK (new_data), klass);
  std::cout << "J6" << std::endl;
  //g_object_unref (identity_sink);
#endif
  g_type_class_add_private (klass, sizeof (GstmsdataPrivate));

}

gboolean
gst_msdata_plugin_init (GstPlugin *plugin)
{
  std::cout << "gst_msdata_plugin_init" << std::endl;
  return gst_element_register (plugin, PLUGIN_NAME, GST_RANK_NONE,
                               GST_TYPE_MSDATA);
}
