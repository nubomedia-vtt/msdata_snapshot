#ifndef _GST_MSDATA_H_
#define _GST_MSDATA_H_

#include <gst/video/gstvideofilter.h>

G_BEGIN_DECLS
#define GST_TYPE_MSDATA   (gst_msdata_get_type())
#define GST_MSDATA(obj)   (G_TYPE_CHECK_INSTANCE_CAST((obj),GST_TYPE_MSDATA,Gstmsdata))
#define GST_MSDATA_CLASS(klass)   (G_TYPE_CHECK_CLASS_CAST((klass),GST_TYPE_MSDATA,GstmsdataClass))
#define GST_IS_MSDATA(obj)   (G_TYPE_CHECK_INSTANCE_TYPE((obj),GST_TYPE_MSDATA))
#define GST_IS_MSDATA_CLASS(klass)   (G_TYPE_CHECK_CLASS_TYPE((klass),GST_TYPE_MSDATA))
typedef struct _Gstmsdata Gstmsdata;
typedef struct _GstmsdataClass GstmsdataClass;
typedef struct _GstmsdataPrivate GstmsdataPrivate;

struct _Gstmsdata
{
  GstVideoFilter base;
  GstmsdataPrivate *priv;
};

struct _GstmsdataClass
{
  GstVideoFilterClass base_msdata_class;
};

GType gst_msdata_get_type (void);

gboolean gst_msdata_plugin_init (GstPlugin * plugin);

G_END_DECLS
#endif /* _GST_MSDATA_H_ */
