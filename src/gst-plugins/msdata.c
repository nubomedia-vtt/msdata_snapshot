#include <config.h>
#include <gst/gst.h>

#include "gstmsdata.h"
#include "kmsshowdata.h"
#include "kmsgraphsmetadata.h"

static gboolean
init (GstPlugin * plugin)
{
  if (!kms_show_data_plugin_init (plugin))
    return FALSE;
  if (!kms_graphs_metadata_plugin_init(plugin))
    return FALSE;
  /*
  if (!gst_msdata_plugin_init (plugin))
    return FALSE;
  */
  return TRUE;
}

GST_PLUGIN_DEFINE (GST_VERSION_MAJOR,
    GST_VERSION_MINOR,
    msdata,
    "Filter documentation",
    init, VERSION, GST_LICENSE_UNKNOWN, "PACKAGE_NAME", "origin")
