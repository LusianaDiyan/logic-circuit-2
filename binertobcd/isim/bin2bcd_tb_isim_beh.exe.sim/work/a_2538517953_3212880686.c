/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Semester 2/Prak. Rangkaian Logika 2/binertobcd/biner2bcd.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_2546454082_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_2538517953_3212880686_p_0(char *t0)
{
    char t13[16];
    char t17[16];
    char t21[16];
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t14;
    unsigned int t15;
    unsigned char t16;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    char *t22;
    char *t23;
    unsigned int t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;

LAB0:    xsi_set_current_line(15, ng0);
    t1 = (t0 + 4704);
    *((int *)t1) = 0;
    t2 = (t0 + 4708);
    *((int *)t2) = 31;
    t3 = 0;
    t4 = 31;

LAB2:    if (t3 <= t4)
        goto LAB3;

LAB5:    xsi_set_current_line(18, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1488U);
    t5 = *((char **)t1);
    t9 = (31 - 18);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t5 + t11);
    memcpy(t1, t2, 16U);
    xsi_set_current_line(19, ng0);
    t1 = (t0 + 4712);
    *((int *)t1) = 0;
    t2 = (t0 + 4716);
    *((int *)t2) = 12;
    t3 = 0;
    t4 = 12;

LAB7:    if (t3 <= t4)
        goto LAB8;

LAB10:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1488U);
    t2 = *((char **)t1);
    t9 = (31 - 31);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = (t0 + 2872);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t14 = (t12 + 56U);
    t18 = *((char **)t14);
    memcpy(t18, t1, 16U);
    xsi_driver_first_trans_fast_port(t5);
    t1 = (t0 + 2792);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(16, ng0);
    t5 = (t0 + 1488U);
    t6 = *((char **)t5);
    t5 = (t0 + 4704);
    t7 = *((int *)t5);
    t8 = (t7 - 31);
    t9 = (t8 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, *((int *)t5));
    t10 = (1U * t9);
    t11 = (0 + t10);
    t12 = (t6 + t11);
    *((unsigned char *)t12) = (unsigned char)2;

LAB4:    t1 = (t0 + 4704);
    t3 = *((int *)t1);
    t2 = (t0 + 4708);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB5;

LAB6:    t7 = (t3 + 1);
    t3 = t7;
    t5 = (t0 + 4704);
    *((int *)t5) = t3;
    goto LAB2;

LAB8:    xsi_set_current_line(20, ng0);
    t5 = (t0 + 1488U);
    t6 = *((char **)t5);
    t9 = (31 - 19);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t5 = (t6 + t11);
    t12 = (t13 + 0U);
    t14 = (t12 + 0U);
    *((int *)t14) = 19;
    t14 = (t12 + 4U);
    *((int *)t14) = 16;
    t14 = (t12 + 8U);
    *((int *)t14) = -1;
    t7 = (16 - 19);
    t15 = (t7 * -1);
    t15 = (t15 + 1);
    t14 = (t12 + 12U);
    *((unsigned int *)t14) = t15;
    t16 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t5, t13, 4);
    if (t16 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 1488U);
    t2 = *((char **)t1);
    t9 = (31 - 23);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = (t13 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 23;
    t6 = (t5 + 4U);
    *((int *)t6) = 20;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t7 = (20 - 23);
    t15 = (t7 * -1);
    t15 = (t15 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t15;
    t16 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t1, t13, 4);
    if (t16 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 1488U);
    t2 = *((char **)t1);
    t9 = (31 - 27);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = (t13 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 27;
    t6 = (t5 + 4U);
    *((int *)t6) = 24;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t7 = (24 - 27);
    t15 = (t7 * -1);
    t15 = (t15 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t15;
    t16 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t1, t13, 4);
    if (t16 != 0)
        goto LAB17;

LAB19:
LAB18:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 1488U);
    t2 = *((char **)t1);
    t9 = (31 - 30);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t5 = xsi_get_transient_memory(31U);
    memcpy(t5, t1, 31U);
    t6 = (t0 + 1488U);
    t12 = *((char **)t6);
    t15 = (31 - 31);
    t19 = (t15 * 1U);
    t20 = (0 + t19);
    t6 = (t12 + t20);
    memcpy(t6, t5, 31U);

LAB9:    t1 = (t0 + 4712);
    t3 = *((int *)t1);
    t2 = (t0 + 4716);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB10;

LAB20:    t7 = (t3 + 1);
    t3 = t7;
    t5 = (t0 + 4712);
    *((int *)t5) = t3;
    goto LAB7;

LAB11:    xsi_set_current_line(21, ng0);
    t14 = (t0 + 1488U);
    t18 = *((char **)t14);
    t15 = (31 - 19);
    t19 = (t15 * 1U);
    t20 = (0 + t19);
    t14 = (t18 + t20);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 19;
    t23 = (t22 + 4U);
    *((int *)t23) = 16;
    t23 = (t22 + 8U);
    *((int *)t23) = -1;
    t8 = (16 - 19);
    t24 = (t8 * -1);
    t24 = (t24 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t24;
    t23 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t17, t14, t21, 3);
    t25 = (t0 + 1488U);
    t26 = *((char **)t25);
    t24 = (31 - 19);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t25 = (t26 + t28);
    t29 = (t17 + 12U);
    t30 = *((unsigned int *)t29);
    t31 = (1U * t30);
    memcpy(t25, t23, t31);
    goto LAB12;

LAB14:    xsi_set_current_line(24, ng0);
    t6 = (t0 + 1488U);
    t12 = *((char **)t6);
    t15 = (31 - 23);
    t19 = (t15 * 1U);
    t20 = (0 + t19);
    t6 = (t12 + t20);
    t14 = (t21 + 0U);
    t18 = (t14 + 0U);
    *((int *)t18) = 23;
    t18 = (t14 + 4U);
    *((int *)t18) = 20;
    t18 = (t14 + 8U);
    *((int *)t18) = -1;
    t8 = (20 - 23);
    t24 = (t8 * -1);
    t24 = (t24 + 1);
    t18 = (t14 + 12U);
    *((unsigned int *)t18) = t24;
    t18 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t17, t6, t21, 3);
    t22 = (t0 + 1488U);
    t23 = *((char **)t22);
    t24 = (31 - 23);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t22 = (t23 + t28);
    t25 = (t17 + 12U);
    t30 = *((unsigned int *)t25);
    t31 = (1U * t30);
    memcpy(t22, t18, t31);
    goto LAB15;

LAB17:    xsi_set_current_line(27, ng0);
    t6 = (t0 + 1488U);
    t12 = *((char **)t6);
    t15 = (31 - 27);
    t19 = (t15 * 1U);
    t20 = (0 + t19);
    t6 = (t12 + t20);
    t14 = (t21 + 0U);
    t18 = (t14 + 0U);
    *((int *)t18) = 27;
    t18 = (t14 + 4U);
    *((int *)t18) = 24;
    t18 = (t14 + 8U);
    *((int *)t18) = -1;
    t8 = (24 - 27);
    t24 = (t8 * -1);
    t24 = (t24 + 1);
    t18 = (t14 + 12U);
    *((unsigned int *)t18) = t24;
    t18 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t17, t6, t21, 3);
    t22 = (t0 + 1488U);
    t23 = *((char **)t22);
    t24 = (31 - 27);
    t27 = (t24 * 1U);
    t28 = (0 + t27);
    t22 = (t23 + t28);
    t25 = (t17 + 12U);
    t30 = *((unsigned int *)t25);
    t31 = (1U * t30);
    memcpy(t22, t18, t31);
    goto LAB18;

}


extern void work_a_2538517953_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2538517953_3212880686_p_0};
	xsi_register_didat("work_a_2538517953_3212880686", "isim/bin2bcd_tb_isim_beh.exe.sim/work/a_2538517953_3212880686.didat");
	xsi_register_executes(pe);
}
