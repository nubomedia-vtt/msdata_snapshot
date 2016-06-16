/* Autogenerated with kurento-module-creator */

#ifndef __MS_DATA_IMPL_HPP__
#define __MS_DATA_IMPL_HPP__

#include "FilterImpl.hpp"
#include "MsData.hpp"
#include <EventHandler.hpp>
#include <boost/property_tree/ptree.hpp>

namespace kurento
{
namespace module
{
namespace msdata
{
class MsDataImpl;
} /* msdata */
} /* module */
} /* kurento */

namespace kurento
{
void Serialize (std::shared_ptr<kurento::module::msdata::MsDataImpl> &object, JsonSerializer &serializer);
} /* kurento */

namespace kurento
{
class MediaPipelineImpl;
} /* kurento */

namespace kurento
{
namespace module
{
namespace msdata
{

class MsDataImpl : public FilterImpl, public virtual MsData
{

public:

  MsDataImpl (const boost::property_tree::ptree &config, std::shared_ptr<MediaPipeline> mediaPipeline);

  virtual ~MsDataImpl () {};

  /* Next methods are automatically implemented by code generator */
  virtual bool connect (const std::string &eventType, std::shared_ptr<EventHandler> handler);
  virtual void invoke (std::shared_ptr<MediaObjectImpl> obj,
                       const std::string &methodName, const Json::Value &params,
                       Json::Value &response);

  virtual void Serialize (JsonSerializer &serializer);

private:
  GstElement *imageOverlay = NULL;

  class StaticConstructor
  {
  public:
    StaticConstructor();
  };

  static StaticConstructor staticConstructor;

};

} /* msdata */
} /* module */
} /* kurento */

#endif /*  __MS_DATA_IMPL_HPP__ */
