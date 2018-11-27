void bioasan_stack_set_redzone(void *addr, unsigned int size) {
    unsigned int dw_unit;
    unsigned int dw_remainder;
    unsigned int b_unit;
    unsigned int b_remainder;
    unsigned int i;
    unsigned int tmp;

    dw_unit = size / 32;
    dw_remainder = size % 32;
    for (i = 0; i < dw_unit; i++, addr += 0x20) {
        set_shadow2(addr, 0xffffffff);
//        printf("set #%x to #%x\n", addr, 0xffffffff);
    }
    if (dw_remainder == 0) {
        return;
    }
    b_unit = dw_remainder / 8;
    tmp = 1;
    for (i = 0; i < b_unit; i++) {
        tmp *= 0x100;
    }
    b_remainder = dw_remainder % 8;
    if (b_remainder != 0) {
        tmp += 0x1000000 * (b_remainder + 1);
        tmp--;
        set_shadow2(addr, tmp);
//        printf("set #%x to #%x\n", addr, tmp);
    }
}

void bioasan_stack_test(void *addr) {
}

void bioasan_stack_unset_redzone(void *addr, unsigned int size) {
    unsigned int dw_unit;
    unsigned int dw_remainder;
    unsigned int i;

    dw_unit = size / 32;
    dw_remainder = size % 32;
    for (i = 0; i < dw_unit; i++, addr += 0x20) {
        set_shadow2(addr, 0x00000000);
//        printf("set #%x to #%x\n", addr, 0x00000000);
    }
    if (dw_remainder == 0) {
        return;
    }
    set_shadow2(addr, 0x00000000);
//    printf("set #%x to #%x\n", addr, 0x00000000);
}

void bioasan_stack_sanitize(void *addr, unsigned int size) {
    unsigned int dw_unit;
}

