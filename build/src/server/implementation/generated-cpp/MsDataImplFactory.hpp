/* Autogenerated with kurento-module-creator */

#ifndef __MS_DATA_IMPL_FACTORY_HPP__
#define __MS_DATA_IMPL_FACTORY_HPP__

#include "MsDataImpl.hpp"
#include "FilterImplFactory.hpp"
#include <Factory.hpp>
#include <MediaObjectImpl.hpp>
#include <boost/property_tree/ptree.hpp>

namespace kurento
{
namespace module
{
namespace msdata
{

class MsDataImplFactory : public virtual FilterImplFactory
{
public:
  MsDataImplFactory () {};

  virtual std::string getName () const {
    return "MsData";
  };

private:

  virtual MediaObjectImpl *createObjectPointer (const boost::property_tree::ptree &conf, const Json::Value &params) const;

  MediaObjectImpl *createObject (const boost::property_tree::ptree &conf, std::shared_ptr<MediaPipeline> mediaPipeline) const;
};

} /* msdata */
} /* module */
} /* kurento */

#endif /*  __MS_DATA_IMPL_FACTORY_HPP__ */