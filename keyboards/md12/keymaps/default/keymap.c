// Copyright 2023 QMK
// SPDX-License-Identifier: GPL-2.0-or-later

#include QMK_KEYBOARD_H

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    [0] = LAYOUT_ortho_1x1(
        KC_ENT
    )
};

#ifdef OLED_ENABLE

// Draw to OLED
bool oled_task_user() {
    oled_set_cursor(0, 1);

    oled_write("Hallo World!", false);

    return false;
}

#endif
