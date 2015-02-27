
###########################################################################
#
# Configuration
#
###########################################################################

#cmake -DLUX_CUSTOM_CONFIG=cmake/SpecializedConfig/sattva.cmake .

MESSAGE(STATUS "Using my own settings")

SET(ENV{LuxRays_HOME}         "${lux_SOURCE_DIR}/../luxrays")

INCLUDE_DIRECTORIES(SYSTEM    "${lux_SOURCE_DIR}/../target/include")

SET(FREEIMAGE_ROOT            "${lux_SOURCE_DIR}/../target/include")
SET(OPENEXR_ROOT              "${lux_SOURCE_DIR}/../target/include/OpenEXR")
SET(PNG_ROOT                  "${lux_SOURCE_DIR}/../target/include/LibPNG")
SET(ZLIB_ROOT                 "${lux_SOURCE_DIR}/../target/include/Zlib")
ADD_DEFINITIONS(-DFREEIMAGE_LIB)

SET(BOOST_ROOT                "${lux_SOURCE_DIR}/../target")
SET(BOOST_INCLUDEDIR          "${BOOST_ROOT}/include")

SET(OPENCL_SEARCH_PATH        "/usr/src/opencl-sdk/include")
SET(OPENCL_LIBRARYDIR         "${OPENCL_SEARCH_PATH}/lib/x86_64")

SET(CMAKE_BUILD_TYPE "Release")

ADD_DEFINITIONS(__MY_COMPILER_FLAGS__)
