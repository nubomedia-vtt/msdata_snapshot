/* Autogenerated with kurento-module-creator */

#include "KmsShowData.hpp"
#include <mutex>

namespace kurento
{
namespace module
{
namespace msdata
{

static std::vector<std::string> hierarchyKmsShowData;
std::once_flag initFlagKmsShowData;

static void
initHierarchy ()
{
  hierarchyKmsShowData.push_back("kurento.MediaElement");
  hierarchyKmsShowData.push_back("kurento.MediaObject");
}

const std::vector<std::string> &
KmsShowData::getHierarchy () const
{
  std::call_once (initFlagKmsShowData,initHierarchy);
  return hierarchyKmsShowData;
}

const std::string&
KmsShowData::getType () const {
  static std::string typeName = "KmsShowData";

  return typeName;
}

const std::string&
KmsShowData::getQualifiedType () const {
  static std::string qualifiedTypeName = getModule() + "." + getType();

  return qualifiedTypeName;
}

const std::string&
KmsShowData::getModule () const {
  static std::string moduleName =  "msdata";

  return moduleName;
}

} /* msdata */
} /* module */
} /* kurento */
