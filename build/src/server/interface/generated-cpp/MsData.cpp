/* Autogenerated with kurento-module-creator */

#include "MsData.hpp"
#include <mutex>

namespace kurento
{
namespace module
{
namespace msdata
{

static std::vector<std::string> hierarchyMsData;
std::once_flag initFlagMsData;

static void
initHierarchy ()
{
  hierarchyMsData.push_back("kurento.Filter");
  hierarchyMsData.push_back("kurento.MediaElement");
  hierarchyMsData.push_back("kurento.MediaObject");
}

const std::vector<std::string> &
MsData::getHierarchy () const
{
  std::call_once (initFlagMsData,initHierarchy);
  return hierarchyMsData;
}

const std::string&
MsData::getType () const {
  static std::string typeName = "MsData";

  return typeName;
}

const std::string&
MsData::getQualifiedType () const {
  static std::string qualifiedTypeName = getModule() + "." + getType();

  return qualifiedTypeName;
}

const std::string&
MsData::getModule () const {
  static std::string moduleName =  "msdata";

  return moduleName;
}

} /* msdata */
} /* module */
} /* kurento */
