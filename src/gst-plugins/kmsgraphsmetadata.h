/*
 * (C) Copyright 2013 Kurento (http://kurento.org/)
 *
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the GNU Lesser General Public License
 * (LGPL) version 2.1 which accompanies this distribution, and is available at
 * http://www.gnu.org/licenses/lgpl-2.1.html
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 */

#ifndef _KMS_GRAPHS_METADATA_H_
#define _KMS_GRAPHS_METADATA_H_

#include <gst/video/gstvideofilter.h>

G_BEGIN_DECLS
#define KMS_TYPE_GRAPHS_METADATA   (kms_graphs_metadata_get_type())
#define KMS_GRAPHS_METADATA(obj)   (G_TYPE_CHECK_INSTANCE_CAST((obj),KMS_TYPE_GRAPHS_METADATA,KmsGraphsMetadata))
#define KMS_GRAPHS_METADATA_CLASS(klass)   (G_TYPE_CHECK_CLASS_CAST((klass),KMS_TYPE_GRAPHS_METADATA,KmsGraphsMetadataClass))
#define KMS_IS_GRAPHS_METADATA(obj)   (G_TYPE_CHECK_INSTANCE_TYPE((obj),KMS_TYPE_GRAPHS_METADATA))
#define KMS_IS_GRAPHS_METADATA_CLASS(klass)   (G_TYPE_CHECK_CLASS_TYPE((klass),KMS_TYPE_GRAPHS_METADATA))

typedef struct _KmsGraphsMetadata KmsGraphsMetadata;
typedef struct _KmsGraphsMetadataClass KmsGraphsMetadataClass;
typedef struct _KmsGraphsMetadataPrivate KmsGraphsMetadataPrivate;

extern void new_datax (GstElement* object, GstBuffer* buffer, GstElement* elm);

struct _KmsGraphsMetadata
{
  GstVideoFilter base;
  KmsGraphsMetadataPrivate *priv;

  //  cv::Mat *tst;

};

struct _KmsGraphsMetadataClass
{
  GstVideoFilterClass base_graphs_class;
};

GType kms_graphs_metadata_get_type (void);

gboolean kms_graphs_metadata_plugin_init (GstPlugin * plugin);

G_END_DECLS

#endif  /* _KMS_GRAPHS_METADATA_H_ */
