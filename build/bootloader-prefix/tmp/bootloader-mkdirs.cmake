# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "D:/software/Espressif/esp-idf/components/bootloader/subproject"
  "E:/ESP/ESP32/lcd_touch/build/bootloader"
  "E:/ESP/ESP32/lcd_touch/build/bootloader-prefix"
  "E:/ESP/ESP32/lcd_touch/build/bootloader-prefix/tmp"
  "E:/ESP/ESP32/lcd_touch/build/bootloader-prefix/src/bootloader-stamp"
  "E:/ESP/ESP32/lcd_touch/build/bootloader-prefix/src"
  "E:/ESP/ESP32/lcd_touch/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "E:/ESP/ESP32/lcd_touch/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "E:/ESP/ESP32/lcd_touch/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
