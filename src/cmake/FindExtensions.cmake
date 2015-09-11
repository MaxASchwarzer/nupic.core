# -----------------------------------------------------------------------------
# Numenta Platform for Intelligent Computing (NuPIC)
# Copyright (C) 2015, Numenta, Inc.  Unless you have purchased from
# Numenta, Inc. a separate commercial license for this software code, the
# following terms and conditions apply:
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero Public License version 3 as
# published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU Affero Public License for more details.
#
# You should have received a copy of the GNU Affero Public License
# along with this program.  If not, see http://www.gnu.org/licenses.
#
# http://numenta.org/licenses/
# -----------------------------------------------------------------------------

function(WRITE_EXTENSIONS
         OUTPUT_PATH
         COMPILE_FLAGS
         LINK_FLAGS
         LIBRARIES
         DEFINES
         INCLUDE_DIRS
         LINK_DIRS
         PREFIX_DIRS)
  file(WRITE ${OUTPUT_PATH} "---

  # Auto-generated by CMake. Do not edit.")

  file(APPEND ${OUTPUT_PATH} "

COMPILE_FLAGS:")

  foreach(flag ${COMPILE_FLAGS})
    file(APPEND ${OUTPUT_PATH} "
  - ${flag}")
  endforeach()

  file(APPEND ${OUTPUT_PATH} "

LINK_FLAGS:")

  foreach(flag ${LINK_FLAGS})
    file(APPEND ${OUTPUT_PATH} "
    - ${flag}")
  endforeach()

  file(APPEND ${OUTPUT_PATH} "

LIBRARIES:")

  foreach(lib ${LIBRARIES})
    file(APPEND ${OUTPUT_PATH} "
    - ${lib}")
  endforeach()

  # Compiler definitions
  file(APPEND ${OUTPUT_PATH} "

DEFINES:")
  foreach(define ${DEFINES})
    file(APPEND ${OUTPUT_PATH} "
    - ${define}")
  endforeach()

  # Include directories
  file(APPEND ${OUTPUT_PATH} "

INCLUDE_DIRS:")
  foreach(dir ${INCLUDE_DIRS})
    file(APPEND ${OUTPUT_PATH} "
    - ${dir}")
  endforeach()

  # Library directories
  file(APPEND ${OUTPUT_PATH} "

LINK_DIRS:")
  foreach(dir ${LINK_DIRS})
    file(APPEND ${OUTPUT_PATH} "
    - ${dir}")
  endforeach()

  # Prefix directories
  file(APPEND ${OUTPUT_PATH} "

PREFIX_DIRS:")
  foreach(dir ${PREFIX_DIRS})
    file(APPEND ${OUTPUT_PATH} "
    - ${dir}")
  endforeach()
endfunction()