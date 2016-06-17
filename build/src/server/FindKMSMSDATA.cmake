# - Try to find KMSMSDATA library

#=============================================================================
# Copyright 2014 Kurento
#
#=============================================================================

set(PACKAGE_VERSION "0.0.1~4.g16270ef")
set(KMSMSDATA_VERSION ${PACKAGE_VERSION})

message (STATUS "Looking for KMSMSDATA: 0.0.1~4.g16270ef")

include (GenericFind)

generic_find (
  REQUIRED
  LIBNAME KMSCORE
  VERSION ^6.0.0
)

generic_find (
  REQUIRED
  LIBNAME KMSELEMENTS
  VERSION ^6.0.0
)

generic_find (
  REQUIRED
  LIBNAME KMSFILTERS
  VERSION ^6.0.0
)

set (REQUIRED_VARS
  KMSMSDATA_VERSION
  KMSMSDATA_INCLUDE_DIRS
  KMSMSDATA_LIBRARY
  KMSMSDATA_LIBRARIES
)

set(KMSMSDATA_INCLUDE_DIRS
  ${KMSCORE_INCLUDE_DIRS}
  ${KMSELEMENTS_INCLUDE_DIRS}
  ${KMSFILTERS_INCLUDE_DIRS}
)

if (NOT "KmsShowData.hpp MsData.hpp KmsShowDataInternal.hpp MsDataInternal.hpp" STREQUAL " ")
  find_path(KMSMSDATA_INTERFACE_INCLUDE_DIR
    NAMES
      KmsShowData.hpp MsData.hpp
      KmsShowDataInternal.hpp MsDataInternal.hpp
    PATH_SUFFIXES
      build/src/server/interface/generated-cpp
      kurento/modules/msdata
  )

  list (APPEND KMSMSDATA_INCLUDE_DIRS ${KMSMSDATA_INTERFACE_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSMSDATA_INTERFACE_INCLUDE_DIR)
endif ()

if (NOT "KmsShowDataImplFactory.hpp MsDataImplFactory.hpp" STREQUAL "")
  find_path(KMSMSDATA_IMPLEMENTATION_INTERNAL_INCLUDE_DIR
    NAMES
      KmsShowDataImplFactory.hpp MsDataImplFactory.hpp
    PATH_SUFFIXES
      build/src/server/implementation/generated-cpp
      kurento/modules/msdata
  )

  list (APPEND KMSMSDATA_INCLUDE_DIRS ${KMSMSDATA_IMPLEMENTATION_INTERNAL_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSMSDATA_IMPLEMENTATION_INTERNAL_INCLUDE_DIR)
endif ()

if (NOT "KmsShowDataImpl.hpp MsDataImpl.hpp" STREQUAL "")
  find_path(KMSMSDATA_IMPLEMENTATION_GENERATED_INCLUDE_DIR
    NAMES
      KmsShowDataImpl.hpp MsDataImpl.hpp
    PATH_SUFFIXES
      src/server/implementation/objects
      kurento/modules/msdata
  )

  list (APPEND KMSMSDATA_INCLUDE_DIRS ${KMSMSDATA_IMPLEMENTATION_GENERATED_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSMSDATA_IMPLEMENTATION_GENERATED_INCLUDE_DIR)
endif()

if (NOT "" STREQUAL "")
  find_path(KMSMSDATA_IMPLEMENTATION_EXTRA_INCLUDE_DIR
    NAMES
      
    PATH_SUFFIXES
      
      kurento/modules/msdata
  )

  list (APPEND KMSMSDATA_INCLUDE_DIRS ${KMSMSDATA_IMPLEMENTATION_EXTRA_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSMSDATA_IMPLEMENTATION_EXTRA_INCLUDE_DIR)
endif ()

if (NOT "" STREQUAL "")
  find_path(KMSMSDATA_INTERFACE_EXTRA_INCLUDE_DIR
    NAMES
      
    PATH_SUFFIXES
      
      kurento/modules/msdata
  )

  list (APPEND KMSMSDATA_INCLUDE_DIRS ${KMSMSDATA_INTERFACE_EXTRA_INCLUDE_DIR})
  list (APPEND REQUIRED_VARS KMSMSDATA_INTERFACE_EXTRA_INCLUDE_DIR)
endif ()

find_library (KMSMSDATA_LIBRARY
  NAMES
    kmsmsdataimpl
  PATH_SUFFIXES
    build/src/server
)

set (REQUIRED_LIBS "")
foreach (LIB ${REQUIRED_LIBS})
  string(FIND ${LIB} " " POS)

  if (${POS} GREATER 0)
    string(REPLACE " " ";" REQUIRED_LIB_LIST ${LIB})
    include (CMakeParseArguments)
    cmake_parse_arguments("PARAM" "" "LIBNAME" "" ${REQUIRED_LIB_LIST})

    if (DEFINED PARAM_LIBNAME)
      generic_find (${REQUIRED_LIB_LIST} REQUIRED)
      set (LIB_NAME ${PARAM_LIBNAME})
    else()
      string (SUBSTRING ${LIB} 0 ${POS} LIB_NAME)
      string (SUBSTRING ${LIB} ${POS} -1 LIB_VERSION)
      string (STRIP ${LIB_NAME} LIB_NAME)
      string (STRIP ${LIB_VERSION} LIB_VERSION)
      generic_find (LIBNAME ${LIB_NAME} REQUIRED VERSION "${LIB_VERSION}")
    endif()
  else ()
    string (STRIP ${LIB} LIB_NAME)
    generic_find (LIBNAME ${LIB_NAME} REQUIRED)
  endif ()
  list (APPEND REQUIRED_LIBRARIES ${${LIB_NAME}_LIBRARIES})
  list (APPEND KMSMSDATA_INCLUDE_DIRS ${${LIB_NAME}_INCLUDE_DIRS})

endforeach()

set(KMSMSDATA_INCLUDE_DIRS
  ${KMSMSDATA_INCLUDE_DIRS}
  CACHE INTERNAL "Include directories for KMSMSDATA library"
)

set (KMSMSDATA_LIBRARIES
  ${KMSMSDATA_LIBRARY}
  ${KMSCORE_LIBRARIES}
  ${KMSELEMENTS_LIBRARIES}
  ${KMSFILTERS_LIBRARIES}
  ${REQUIRED_LIBRARIES}
  CACHE INTERNAL "Libraries for KMSMSDATA"
)

include (FindPackageHandleStandardArgs)

find_package_handle_standard_args(KMSMSDATA
  FOUND_VAR
    KMSMSDATA_FOUND
  REQUIRED_VARS
    ${REQUIRED_VARS}
  VERSION_VAR
    KMSMSDATA_VERSION
)

mark_as_advanced(
  KMSMSDATA_FOUND
  KMSMSDATA_VERSION
  KMSMSDATA_INTERFACE_INCLUDE_DIR
  KMSMSDATA_IMPLEMENTATION_INTERNAL_INCLUDE_DIR
  KMSMSDATA_IMPLEMENTATION_GENERATED_INCLUDE_DIR
  KMSMSDATA_IMPLEMENTATION_EXTRA_INCLUDE_DIR
  KMSMSDATA_INTERFACE_EXTRA_INCLUDE_DIR
  KMSMSDATA_INCLUDE_DIRS
  KMSMSDATA_LIBRARY
  KMSMSDATA_LIBRARIES
)
