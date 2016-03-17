
###########################################################################
#
# Configuration
#
###########################################################################

#cmake -DLUXRAYS_CUSTOM_CONFIG=cmake/SpecializedConfig/sattva.cmake .

MESSAGE(STATUS "Using my own settings")

set(Python_ADDITIONAL_VERSIONS 3.4)

set(FREEIMAGE_ROOT            "${LuxRays_SOURCE_DIR}/../target/include")
set(BOOST_SEARCH_PATH         "${LuxRays_SOURCE_DIR}/../target/lib")

# set(OPENCL_SEARCH_PATH        "$ENV{ATISTREAMSDKROOT}")
set(OPENCL_SEARCH_PATH        "/usr/src/opencl-sdk/include")
set(OPENCL_LIBRARYDIR         "${OPENCL_SEARCH_PATH}/lib/x86_64")
SET(GLEW_ROOT                 "${LuxRays_SOURCE_DIR}/../target/include/GL")
#SET(GLEW_LIBRARY              "${LuxRays_SOURCE_DIR}/../target/lib64")

MESSAGE(STATUS "GLEW_ROOT:" ${HOME} )
#MESSAGE(STATUS "GLEW_ROOT:" ${CMAKE_CURRENT_SOURCE_DIR} )

# set(BUILD_LUXMARK TRUE)
set(CMAKE_BUILD_TYPE "Release")

