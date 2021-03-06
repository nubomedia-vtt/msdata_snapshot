/* Autogenerated with kurento-module-creator */

#ifndef __MS_DATA_INTERNAL_HPP__
#define __MS_DATA_INTERNAL_HPP__

#include "MsData.hpp"

namespace kurento
{
class JsonSerializer;
}

namespace kurento
{
class MediaPipeline;
} /* kurento */

namespace kurento
{
namespace module
{
namespace msdata
{

class MsDataConstructor
{
public:
  MsDataConstructor () {}
  ~MsDataConstructor () {}

  void Serialize (JsonSerializer &serializer);

  std::shared_ptr<MediaPipeline> getMediaPipeline ();

  void setMediaPipeline (std::shared_ptr<MediaPipeline> mediaPipeline) {
    this->mediaPipeline = mediaPipeline;
  }

private:
  std::shared_ptr<MediaPipeline> mediaPipeline;
};

} /* msdata */
} /* module */
} /* kurento */

#endif /*  __MS_DATA_INTERNAL_HPP__ */
