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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/jednorozecxd/Desktop/UCISW2/Akcelerometr/read_from_adxl345_tb.vhd";
extern char *IEEE_P_2592010699;
extern char *STD_TEXTIO;
extern char *IEEE_P_3564397177;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1006216973935652998_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_13554554585326073636_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
void ieee_p_3564397177_sub_2258168291854845616_91900896(char *, char *, char *, char *, char *, unsigned char , int );


static void work_a_3692315504_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int64 t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(57, ng0);

LAB3:    t1 = (t0 + 6120);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    t6 = (100 * 1000LL);
    t7 = (t0 + 6120);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_subsequent_trans_delta(t7, 0U, 1, t6);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3692315504_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int64 t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(58, ng0);

LAB3:    t1 = (t0 + 6184);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_delta(t1, 0U, 1, 0LL);
    t6 = (200 * 1000LL);
    t7 = (t0 + 6184);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_subsequent_trans_delta(t7, 0U, 1, t6);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3692315504_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4632U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 6248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4440);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 6248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2608U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 4440);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3692315504_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;

LAB0:    t1 = (t0 + 4880U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 4688);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2608U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 4688);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(80, ng0);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}

static void work_a_3692315504_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(85, ng0);

LAB3:    t1 = (t0 + 6312);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3692315504_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;

LAB0:    xsi_set_current_line(86, ng0);

LAB3:    t1 = (t0 + 6376);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)7;
    xsi_driver_first_trans_fast(t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3692315504_3212880686_p_6(char *t0)
{
    char t11[16];
    char t19[16];
    char t24[8];
    char t26[8];
    char t30[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    char *t12;
    int t13;
    unsigned int t14;
    int64 t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    char *t20;
    int t21;
    unsigned int t22;
    char *t23;
    int64 t25;
    int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 5624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 6440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)4;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(95, ng0);

LAB4:
LAB5:    xsi_set_current_line(97, ng0);

LAB10:    t2 = (t0 + 5944);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB6:;
LAB7:    goto LAB2;

LAB8:    t4 = (t0 + 5944);
    *((int *)t4) = 0;
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t4 = (t0 + 10256);
    t6 = (t11 + 0U);
    t12 = (t6 + 0U);
    *((int *)t12) = 1;
    t12 = (t6 + 4U);
    *((int *)t12) = 5;
    t12 = (t6 + 8U);
    *((int *)t12) = 1;
    t13 = (5 - 1);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t6 + 12U);
    *((unsigned int *)t12) = t14;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t11, (unsigned char)0, 0);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t15 = xsi_get_sim_current_time();
    std_textio_write8(STD_TEXTIO, t2, t3, t15, (unsigned char)0, 0, 1000000LL);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t4 = (t0 + 10261);
    t6 = (t11 + 0U);
    t12 = (t6 + 0U);
    *((int *)t12) = 1;
    t12 = (t6 + 4U);
    *((int *)t12) = 17;
    t12 = (t6 + 8U);
    *((int *)t12) = 1;
    t13 = (17 - 1);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t6 + 12U);
    *((unsigned int *)t12) = t14;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t11, (unsigned char)0, 0);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 5432);
    t3 = ((STD_TEXTIO) + 1480U);
    t4 = (t0 + 3488U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 10278);
    *((int *)t2) = 0;
    t3 = (t0 + 10282);
    *((int *)t3) = 8;
    t13 = 0;
    t16 = 8;

LAB15:    if (t13 <= t16)
        goto LAB16;

LAB18:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t4 = (t0 + 10286);
    t6 = (t11 + 0U);
    t12 = (t6 + 0U);
    *((int *)t12) = 1;
    t12 = (t6 + 4U);
    *((int *)t12) = 5;
    t12 = (t6 + 8U);
    *((int *)t12) = 1;
    t13 = (5 - 1);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t6 + 12U);
    *((unsigned int *)t12) = t14;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t11, (unsigned char)0, 0);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t15 = xsi_get_sim_current_time();
    std_textio_write8(STD_TEXTIO, t2, t3, t15, (unsigned char)0, 0, 1000000LL);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t4 = (t0 + 10291);
    t6 = (t11 + 0U);
    t12 = (t6 + 0U);
    *((int *)t12) = 1;
    t12 = (t6 + 4U);
    *((int *)t12) = 16;
    t12 = (t6 + 8U);
    *((int *)t12) = 1;
    t13 = (16 - 1);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t6 + 12U);
    *((unsigned int *)t12) = t14;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t11, (unsigned char)0, 0);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t4 = (t0 + 2728U);
    t5 = *((char **)t4);
    memcpy(t24, t5, 8U);
    t4 = (t0 + 10032U);
    ieee_p_3564397177_sub_2258168291854845616_91900896(IEEE_P_3564397177, t2, t3, t24, t4, (unsigned char)0, 0);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 5432);
    t3 = ((STD_TEXTIO) + 1480U);
    t4 = (t0 + 3488U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(112, ng0);
    t15 = (2.5000000000000000 * 1000000LL);
    t25 = (t15 / 4);
    t2 = (t0 + 5432);
    xsi_process_wait(t2, t25);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB9:    t3 = (t0 + 992U);
    t8 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t8 == 1)
        goto LAB12;

LAB13:    t7 = (unsigned char)0;

LAB14:    if (t7 == 1)
        goto LAB8;
    else
        goto LAB10;

LAB11:    goto LAB9;

LAB12:    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t9 = *((unsigned char *)t5);
    t10 = (t9 != (unsigned char)2);
    t7 = t10;
    goto LAB14;

LAB16:    xsi_set_current_line(104, ng0);

LAB21:    t4 = (t0 + 5960);
    *((int *)t4) = 1;
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB17:    t2 = (t0 + 10278);
    t13 = *((int *)t2);
    t3 = (t0 + 10282);
    t16 = *((int *)t3);
    if (t13 == t16)
        goto LAB18;

LAB23:    t21 = (t13 + 1);
    t13 = t21;
    t4 = (t0 + 10278);
    *((int *)t4) = t13;
    goto LAB15;

LAB19:    t6 = (t0 + 5960);
    *((int *)t6) = 0;
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 2728U);
    t3 = *((char **)t2);
    t14 = (7 - 6);
    t17 = (t14 * 1U);
    t18 = (0 + t17);
    t2 = (t3 + t18);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t7 = *((unsigned char *)t5);
    t6 = ((IEEE_P_2592010699) + 4000);
    t12 = (t19 + 0U);
    t20 = (t12 + 0U);
    *((int *)t20) = 6;
    t20 = (t12 + 4U);
    *((int *)t20) = 0;
    t20 = (t12 + 8U);
    *((int *)t20) = -1;
    t21 = (0 - 6);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t20 = (t12 + 12U);
    *((unsigned int *)t20) = t22;
    t4 = xsi_base_array_concat(t4, t11, t6, (char)97, t2, t19, (char)99, t7, (char)101);
    t20 = (t0 + 2728U);
    t23 = *((char **)t20);
    t20 = (t23 + 0);
    t22 = (7U + 1U);
    memcpy(t20, t4, t22);
    goto LAB17;

LAB20:    t5 = (t0 + 1152U);
    t7 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t5, 0U, 0U);
    if (t7 == 1)
        goto LAB19;
    else
        goto LAB21;

LAB22:    goto LAB20;

LAB24:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 6440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(114, ng0);
    t15 = (2.5000000000000000 * 1000000LL);
    t2 = (t0 + 5432);
    xsi_process_wait(t2, t15);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 6440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)4;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 2728U);
    t3 = *((char **)t2);
    t13 = (0 - 7);
    t14 = (t13 * -1);
    t17 = (1U * t14);
    t18 = (0 + t17);
    t2 = (t3 + t18);
    t7 = *((unsigned char *)t2);
    t8 = (t7 == (unsigned char)2);
    if (t8 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(153, ng0);

LAB71:
LAB72:    xsi_set_current_line(154, ng0);
    t2 = (t0 + 10358);
    *((int *)t2) = 7;
    t3 = (t0 + 10362);
    *((int *)t3) = 0;
    t13 = 7;
    t16 = 0;

LAB75:    if (t13 >= t16)
        goto LAB76;

LAB78:    xsi_set_current_line(163, ng0);
    t2 = (t0 + 6440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)4;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(166, ng0);

LAB93:    t2 = (t0 + 6040);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB94;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    xsi_set_current_line(120, ng0);

LAB35:
LAB36:    xsi_set_current_line(122, ng0);

LAB41:    t4 = (t0 + 5976);
    *((int *)t4) = 1;
    *((char **)t1) = &&LAB42;
    goto LAB1;

LAB33:    goto LAB4;

LAB37:;
LAB38:    goto LAB33;

LAB39:    t6 = (t0 + 5976);
    *((int *)t6) = 0;
    xsi_set_current_line(123, ng0);

LAB45:    t2 = (t0 + 5992);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB46;
    goto LAB1;

LAB40:    t5 = (t0 + 1152U);
    t9 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t5, 0U, 0U);
    if (t9 == 1)
        goto LAB39;
    else
        goto LAB41;

LAB42:    goto LAB40;

LAB43:    t5 = (t0 + 5992);
    *((int *)t5) = 0;
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 992U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t7 != 0)
        goto LAB50;

LAB52:
LAB51:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t2 = (t0 + 2848U);
    t4 = *((char **)t2);
    t13 = (0 - 7);
    t14 = (t13 * -1);
    t17 = (1U * t14);
    t18 = (0 + t17);
    t2 = (t4 + t18);
    *((unsigned char *)t2) = t7;
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 10328);
    *((int *)t2) = 1;
    t3 = (t0 + 10332);
    *((int *)t3) = 7;
    t13 = 1;
    t16 = 7;

LAB54:    if (t13 <= t16)
        goto LAB55;

LAB57:    xsi_set_current_line(140, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t4 = (t0 + 10336);
    t6 = (t11 + 0U);
    t12 = (t6 + 0U);
    *((int *)t12) = 1;
    t12 = (t6 + 4U);
    *((int *)t12) = 5;
    t12 = (t6 + 8U);
    *((int *)t12) = 1;
    t13 = (5 - 1);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t6 + 12U);
    *((unsigned int *)t12) = t14;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t11, (unsigned char)0, 0);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t15 = xsi_get_sim_current_time();
    std_textio_write8(STD_TEXTIO, t2, t3, t15, (unsigned char)0, 0, 1000000LL);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t4 = (t0 + 10341);
    t6 = (t11 + 0U);
    t12 = (t6 + 0U);
    *((int *)t12) = 1;
    t12 = (t6 + 4U);
    *((int *)t12) = 17;
    t12 = (t6 + 8U);
    *((int *)t12) = 1;
    t13 = (17 - 1);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t6 + 12U);
    *((unsigned int *)t12) = t14;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t11, (unsigned char)0, 0);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t4 = (t0 + 2848U);
    t5 = *((char **)t4);
    memcpy(t26, t5, 8U);
    t4 = (t0 + 10048U);
    ieee_p_3564397177_sub_2258168291854845616_91900896(IEEE_P_3564397177, t2, t3, t26, t4, (unsigned char)0, 0);
    xsi_set_current_line(141, ng0);
    t2 = (t0 + 5432);
    t3 = ((STD_TEXTIO) + 1480U);
    t4 = (t0 + 3488U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(144, ng0);
    t15 = (2.5000000000000000 * 1000000LL);
    t25 = (t15 / 4);
    t2 = (t0 + 5432);
    xsi_process_wait(t2, t25);

LAB65:    *((char **)t1) = &&LAB66;
    goto LAB1;

LAB44:    t3 = (t0 + 992U);
    t8 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t8 == 1)
        goto LAB47;

LAB48:    t4 = (t0 + 1152U);
    t9 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t4, 0U, 0U);
    t7 = t9;

LAB49:    if (t7 == 1)
        goto LAB43;
    else
        goto LAB45;

LAB46:    goto LAB44;

LAB47:    t7 = (unsigned char)1;
    goto LAB49;

LAB50:    xsi_set_current_line(125, ng0);
    t3 = (t0 + 5432);
    t4 = (t0 + 3488U);
    t5 = (t0 + 10307);
    t12 = (t11 + 0U);
    t20 = (t12 + 0U);
    *((int *)t20) = 1;
    t20 = (t12 + 4U);
    *((int *)t20) = 5;
    t20 = (t12 + 8U);
    *((int *)t20) = 1;
    t13 = (5 - 1);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t20 = (t12 + 12U);
    *((unsigned int *)t20) = t14;
    std_textio_write7(STD_TEXTIO, t3, t4, t5, t11, (unsigned char)0, 0);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t15 = xsi_get_sim_current_time();
    std_textio_write8(STD_TEXTIO, t2, t3, t15, (unsigned char)0, 0, 1000000LL);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t4 = (t0 + 10312);
    t6 = (t11 + 0U);
    t12 = (t6 + 0U);
    *((int *)t12) = 1;
    t12 = (t6 + 4U);
    *((int *)t12) = 16;
    t12 = (t6 + 8U);
    *((int *)t12) = 1;
    t13 = (16 - 1);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t6 + 12U);
    *((unsigned int *)t12) = t14;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t11, (unsigned char)0, 0);
    xsi_set_current_line(126, ng0);
    t2 = (t0 + 5432);
    t3 = ((STD_TEXTIO) + 1480U);
    t4 = (t0 + 3488U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(127, ng0);
    goto LAB38;

LAB53:    goto LAB51;

LAB55:    xsi_set_current_line(135, ng0);

LAB60:    t4 = (t0 + 6008);
    *((int *)t4) = 1;
    *((char **)t1) = &&LAB61;
    goto LAB1;

LAB56:    t2 = (t0 + 10328);
    t13 = *((int *)t2);
    t3 = (t0 + 10332);
    t16 = *((int *)t3);
    if (t13 == t16)
        goto LAB57;

LAB62:    t21 = (t13 + 1);
    t13 = t21;
    t4 = (t0 + 10328);
    *((int *)t4) = t13;
    goto LAB54;

LAB58:    t6 = (t0 + 6008);
    *((int *)t6) = 0;
    xsi_set_current_line(136, ng0);
    t2 = (t0 + 2848U);
    t3 = *((char **)t2);
    t14 = (7 - 6);
    t17 = (t14 * 1U);
    t18 = (0 + t17);
    t2 = (t3 + t18);
    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t7 = *((unsigned char *)t5);
    t6 = ((IEEE_P_2592010699) + 4000);
    t12 = (t19 + 0U);
    t20 = (t12 + 0U);
    *((int *)t20) = 6;
    t20 = (t12 + 4U);
    *((int *)t20) = 0;
    t20 = (t12 + 8U);
    *((int *)t20) = -1;
    t21 = (0 - 6);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t20 = (t12 + 12U);
    *((unsigned int *)t20) = t22;
    t4 = xsi_base_array_concat(t4, t11, t6, (char)97, t2, t19, (char)99, t7, (char)101);
    t20 = (t0 + 2848U);
    t23 = *((char **)t20);
    t20 = (t23 + 0);
    t22 = (7U + 1U);
    memcpy(t20, t4, t22);
    goto LAB56;

LAB59:    t5 = (t0 + 1152U);
    t7 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t5, 0U, 0U);
    if (t7 == 1)
        goto LAB58;
    else
        goto LAB60;

LAB61:    goto LAB59;

LAB63:    xsi_set_current_line(145, ng0);
    t2 = (t0 + 6440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(146, ng0);
    t15 = (2.5000000000000000 * 1000000LL);
    t2 = (t0 + 5432);
    xsi_process_wait(t2, t15);

LAB69:    *((char **)t1) = &&LAB70;
    goto LAB1;

LAB64:    goto LAB63;

LAB66:    goto LAB64;

LAB67:    xsi_set_current_line(147, ng0);
    t2 = (t0 + 6440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)4;
    xsi_driver_first_trans_fast(t2);
    goto LAB35;

LAB68:    goto LAB67;

LAB70:    goto LAB68;

LAB73:;
LAB74:    goto LAB33;

LAB76:    xsi_set_current_line(155, ng0);
    t4 = (t0 + 2968U);
    t5 = *((char **)t4);
    t4 = (t0 + 10358);
    t21 = *((int *)t4);
    t27 = (t21 - 7);
    t14 = (t27 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t4));
    t17 = (1U * t14);
    t18 = (0 + t17);
    t6 = (t5 + t18);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB79;

LAB81:    xsi_set_current_line(158, ng0);
    t2 = (t0 + 6440);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB80:    xsi_set_current_line(160, ng0);

LAB84:    t2 = (t0 + 6024);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB85;
    goto LAB1;

LAB77:    t2 = (t0 + 10358);
    t13 = *((int *)t2);
    t3 = (t0 + 10362);
    t16 = *((int *)t3);
    if (t13 == t16)
        goto LAB78;

LAB90:    t21 = (t13 + -1);
    t13 = t21;
    t4 = (t0 + 10358);
    *((int *)t4) = t13;
    goto LAB75;

LAB79:    xsi_set_current_line(156, ng0);
    t12 = (t0 + 6440);
    t20 = (t12 + 56U);
    t23 = *((char **)t20);
    t28 = (t23 + 56U);
    t29 = *((char **)t28);
    *((unsigned char *)t29) = (unsigned char)4;
    xsi_driver_first_trans_fast(t12);
    goto LAB80;

LAB82:    t4 = (t0 + 6024);
    *((int *)t4) = 0;
    xsi_set_current_line(161, ng0);
    t15 = (2.5000000000000000 * 1000000LL);
    t25 = (t15 / 4);
    t2 = (t0 + 5432);
    xsi_process_wait(t2, t25);

LAB88:    *((char **)t1) = &&LAB89;
    goto LAB1;

LAB83:    t3 = (t0 + 1152U);
    t7 = ieee_p_2592010699_sub_13554554585326073636_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB82;
    else
        goto LAB84;

LAB85:    goto LAB83;

LAB86:    goto LAB77;

LAB87:    goto LAB86;

LAB89:    goto LAB87;

LAB91:    t4 = (t0 + 6040);
    *((int *)t4) = 0;
    xsi_set_current_line(167, ng0);
    t15 = (2.5000000000000000 * 1000000LL);
    t25 = (t15 / 4);
    t2 = (t0 + 5432);
    xsi_process_wait(t2, t25);

LAB97:    *((char **)t1) = &&LAB98;
    goto LAB1;

LAB92:    t3 = (t0 + 1152U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB91;
    else
        goto LAB93;

LAB94:    goto LAB92;

LAB95:    xsi_set_current_line(168, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t2 = (t0 + 3088U);
    t4 = *((char **)t2);
    t2 = (t4 + 0);
    *((unsigned char *)t2) = t7;
    xsi_set_current_line(169, ng0);
    t15 = (2.5000000000000000 * 1000000LL);
    t25 = (t15 / 2);
    t2 = (t0 + 5432);
    xsi_process_wait(t2, t25);

LAB101:    *((char **)t1) = &&LAB102;
    goto LAB1;

LAB96:    goto LAB95;

LAB98:    goto LAB96;

LAB99:    xsi_set_current_line(172, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t4 = (t0 + 10366);
    t6 = (t11 + 0U);
    t12 = (t6 + 0U);
    *((int *)t12) = 1;
    t12 = (t6 + 4U);
    *((int *)t12) = 5;
    t12 = (t6 + 8U);
    *((int *)t12) = 1;
    t13 = (5 - 1);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t6 + 12U);
    *((unsigned int *)t12) = t14;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t11, (unsigned char)0, 0);
    xsi_set_current_line(172, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t15 = xsi_get_sim_current_time();
    std_textio_write8(STD_TEXTIO, t2, t3, t15, (unsigned char)0, 0, 1000000LL);
    xsi_set_current_line(172, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t4 = (t0 + 10371);
    t6 = (t11 + 0U);
    t12 = (t6 + 0U);
    *((int *)t12) = 1;
    t12 = (t6 + 4U);
    *((int *)t12) = 20;
    t12 = (t6 + 8U);
    *((int *)t12) = 1;
    t13 = (20 - 1);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t6 + 12U);
    *((unsigned int *)t12) = t14;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t11, (unsigned char)0, 0);
    xsi_set_current_line(172, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t4 = (t0 + 2968U);
    t5 = *((char **)t4);
    memcpy(t30, t5, 8U);
    t4 = (t0 + 10064U);
    ieee_p_3564397177_sub_2258168291854845616_91900896(IEEE_P_3564397177, t2, t3, t30, t4, (unsigned char)0, 0);
    xsi_set_current_line(173, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t8 = (t7 == (unsigned char)2);
    if (t8 != 0)
        goto LAB103;

LAB105:    xsi_set_current_line(176, ng0);
    t2 = (t0 + 5432);
    t3 = (t0 + 3488U);
    t4 = (t0 + 10409);
    t6 = (t11 + 0U);
    t12 = (t6 + 0U);
    *((int *)t12) = 1;
    t12 = (t6 + 4U);
    *((int *)t12) = 18;
    t12 = (t6 + 8U);
    *((int *)t12) = 1;
    t13 = (18 - 1);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t6 + 12U);
    *((unsigned int *)t12) = t14;
    std_textio_write7(STD_TEXTIO, t2, t3, t4, t11, (unsigned char)0, 0);

LAB104:    xsi_set_current_line(178, ng0);
    t2 = (t0 + 5432);
    t3 = ((STD_TEXTIO) + 1480U);
    t4 = (t0 + 3488U);
    std_textio_writeline(STD_TEXTIO, t2, t3, t4);
    xsi_set_current_line(180, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t8 = (t7 != (unsigned char)2);
    if (t8 != 0)
        goto LAB74;

LAB106:    xsi_set_current_line(183, ng0);
    t2 = (t0 + 2968U);
    t3 = *((char **)t2);
    t2 = (t0 + 10064U);
    t4 = ieee_p_1242562249_sub_1006216973935652998_1035706684(IEEE_P_1242562249, t11, t3, t2, 5);
    t5 = (t0 + 2968U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    t12 = (t11 + 12U);
    t14 = *((unsigned int *)t12);
    t17 = (1U * t14);
    memcpy(t5, t4, t17);
    goto LAB71;

LAB100:    goto LAB99;

LAB102:    goto LAB100;

LAB103:    xsi_set_current_line(174, ng0);
    t2 = (t0 + 5432);
    t4 = (t0 + 3488U);
    t5 = (t0 + 10391);
    t12 = (t11 + 0U);
    t20 = (t12 + 0U);
    *((int *)t20) = 1;
    t20 = (t12 + 4U);
    *((int *)t20) = 18;
    t20 = (t12 + 8U);
    *((int *)t20) = 1;
    t13 = (18 - 1);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t20 = (t12 + 12U);
    *((unsigned int *)t20) = t14;
    std_textio_write7(STD_TEXTIO, t2, t4, t5, t11, (unsigned char)0, 0);
    goto LAB104;

}


extern void work_a_3692315504_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3692315504_3212880686_p_0,(void *)work_a_3692315504_3212880686_p_1,(void *)work_a_3692315504_3212880686_p_2,(void *)work_a_3692315504_3212880686_p_3,(void *)work_a_3692315504_3212880686_p_4,(void *)work_a_3692315504_3212880686_p_5,(void *)work_a_3692315504_3212880686_p_6};
	xsi_register_didat("work_a_3692315504_3212880686", "isim/scheme_1_scheme_1_sch_tb_isim_beh.exe.sim/work/a_3692315504_3212880686.didat");
	xsi_register_executes(pe);
}
