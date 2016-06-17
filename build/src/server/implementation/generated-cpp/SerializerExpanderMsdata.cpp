/* Autogenerated with kurento-module-creator */

#include "KmsShowDataImpl.hpp"
#include "MsDataImpl.hpp"

#include <jsonrpc/JsonSerializer.hpp>

namespace kurento
{
namespace module
{
namespace msdata
{

void dummyMsdata ()
{
  {
    JsonSerializer s (true);
    std::shared_ptr<KmsShowData> object;

    s.SerializeNVP (object);
  }
  {
    JsonSerializer s (true);
    std::shared_ptr<MsData> object;

    s.SerializeNVP (object);
  }
}

} /* msdata */
} /* module */
} /* kurento */
