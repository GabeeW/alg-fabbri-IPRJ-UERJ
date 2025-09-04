# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/gabriel/Área de trabalho/alg-fabbri-IPRJ-UERJ/alg/merge/build/_deps/benchmark-src"
  "/home/gabriel/Área de trabalho/alg-fabbri-IPRJ-UERJ/alg/merge/build/_deps/benchmark-build"
  "/home/gabriel/Área de trabalho/alg-fabbri-IPRJ-UERJ/alg/merge/build/_deps/benchmark-subbuild/benchmark-populate-prefix"
  "/home/gabriel/Área de trabalho/alg-fabbri-IPRJ-UERJ/alg/merge/build/_deps/benchmark-subbuild/benchmark-populate-prefix/tmp"
  "/home/gabriel/Área de trabalho/alg-fabbri-IPRJ-UERJ/alg/merge/build/_deps/benchmark-subbuild/benchmark-populate-prefix/src/benchmark-populate-stamp"
  "/home/gabriel/Área de trabalho/alg-fabbri-IPRJ-UERJ/alg/merge/build/_deps/benchmark-subbuild/benchmark-populate-prefix/src"
  "/home/gabriel/Área de trabalho/alg-fabbri-IPRJ-UERJ/alg/merge/build/_deps/benchmark-subbuild/benchmark-populate-prefix/src/benchmark-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/gabriel/Área de trabalho/alg-fabbri-IPRJ-UERJ/alg/merge/build/_deps/benchmark-subbuild/benchmark-populate-prefix/src/benchmark-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/gabriel/Área de trabalho/alg-fabbri-IPRJ-UERJ/alg/merge/build/_deps/benchmark-subbuild/benchmark-populate-prefix/src/benchmark-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
