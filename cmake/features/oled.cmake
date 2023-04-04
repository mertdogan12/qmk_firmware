option(OLED_ENABLE "" TRUE)
if(${OLED_ENABLE})
    target_sources(qmk PUBLIC
      drivers/oled/ssd1306_sh1106.c 
      platforms/${QMK_PLATFORM}/drivers/i2c_master.c)
    target_compile_definitions(qmk PUBLIC OLED_ENABLE)
    target_include_directories(qmk PUBLIC drivers)
    target_include_directories(qmk PUBLIC drivers/oled)
    target_include_directories(qmk PUBLIC platforms/${QMK_PLATFORM}/drivers)
    # target_link_libraries(oled qmk)
    # target_link_libraries(oled ${QMK_TARGET})
    # target_link_libraries(oled platforms)
endif()
