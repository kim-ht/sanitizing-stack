#!/usr/bin/python
from pwn import *

res= '''0_zxc.s    162_zxc.s  224_zxc.s  287_zxc.s  349_zxc.s  410_zxc.s\n0zxc\t   162zxc     224zxc\t 287zxc     349zxc     410zxc\n100_zxc.s  163_zxc.s  225_zxc.s  288_zxc.s  34_zxc.s   411_zxc.s\n100zxc\t   163zxc     225zxc\t 288zxc     34zxc      411zxc\n101_zxc.s  164_zxc.s  226_zxc.s  289_zxc.s  350_zxc.s  41_zxc.s\n101zxc\t   164zxc     226zxc\t 289zxc     350zxc     41zxc\n102_zxc.s  165_zxc.s  227_zxc.s  28_zxc.s   351_zxc.s  42_zxc.s\n102zxc\t   165zxc     227zxc\t 28zxc\t    351zxc     42zxc\n103_zxc.s  166_zxc.s  228_zxc.s  290_zxc.s  352_zxc.s  43_zxc.s\n103zxc\t   166zxc     228zxc\t 290zxc     352zxc     43zxc\n104_zxc.s  167_zxc.s  229_zxc.s  291_zxc.s  353_zxc.s  44_zxc.s\n104zxc\t   167zxc     229zxc\t 291zxc     353zxc     44zxc\n105_zxc.s  168_zxc.s  22_zxc.s\t 292_zxc.s  354_zxc.s  45_zxc.s\n105zxc\t   168zxc     22zxc\t 292zxc     354zxc     45zxc\n106_zxc.s  169_zxc.s  230_zxc.s  293_zxc.s  355_zxc.s  46_zxc.s\n106zxc\t   169zxc     230zxc\t 293zxc     355zxc     46zxc\n107_zxc.s  16_zxc.s   231_zxc.s  294_zxc.s  356_zxc.s  47_zxc.s\n107zxc\t   16zxc      231zxc\t 294zxc     356zxc     47zxc\n108_zxc.s  170_zxc.s  232_zxc.s  295_zxc.s  357_zxc.s  48_zxc.s\n108zxc\t   170zxc     232zxc\t 295zxc     357zxc     48zxc\n109_zxc.s  171_zxc.s  233_zxc.s  296_zxc.s  358_zxc.s  49_zxc.s\n109zxc\t   171zxc     233zxc\t 296zxc     358zxc     49zxc\n10_zxc.s   172_zxc.s  234_zxc.s  297_zxc.s  359_zxc.s  4_zxc.s\n10zxc\t   172zxc     234zxc\t 297zxc     359zxc     4zxc\n110_zxc.s  173_zxc.s  235_zxc.s  298_zxc.s  35_zxc.s   50_zxc.s\n110zxc\t   173zxc     235zxc\t 298zxc     35zxc      50zxc\n111_zxc.s  174_zxc.s  236_zxc.s  299_zxc.s  360_zxc.s  51_zxc.s\n111zxc\t   174zxc     236zxc\t 299zxc     360zxc     51zxc\n112_zxc.s  175_zxc.s  237_zxc.s  29_zxc.s   361_zxc.s  52_zxc.s\n112zxc\t   175zxc     237zxc\t 29zxc\t    361zxc     52zxc\n113_zxc.s  176_zxc.s  238_zxc.s  2_zxc.s    362_zxc.s  53_zxc.s\n113zxc\t   176zxc     238zxc\t 2zxc\t    362zxc     53zxc\n114_zxc.s  177_zxc.s  239_zxc.s  300_zxc.s  363_zxc.s  54_zxc.s\n114zxc\t   177zxc     239zxc\t 300zxc     363zxc     54zxc\n115_zxc.s  178_zxc.s  23_zxc.s\t 301_zxc.s  364_zxc.s  55_zxc.s\n115zxc\t   178zxc     23zxc\t 301zxc     364zxc     55zxc\n116_zxc.s  179_zxc.s  240_zxc.s  302_zxc.s  365_zxc.s  56_zxc.s\n116zxc\t   179zxc     240zxc\t 302zxc     365zxc     56zxc\n117_zxc.s  17_zxc.s   241_zxc.s  303_zxc.s  366_zxc.s  57_zxc.s\n117zxc\t   17zxc      241zxc\t 303zxc     366zxc     57zxc\n118_zxc.s  180_zxc.s  242_zxc.s  304_zxc.s  367_zxc.s  58_zxc.s\n118zxc\t   180zxc     242zxc\t 304zxc     367zxc     58zxc\n119_zxc.s  181_zxc.s  243_zxc.s  305_zxc.s  368_zxc.s  59_zxc.s\n119zxc\t   181zxc     243zxc\t 305zxc     368zxc     59zxc\n11_zxc.s   182_zxc.s  244_zxc.s  306_zxc.s  369_zxc.s  5_zxc.s\n11zxc\t   182zxc     244zxc\t 306zxc     369zxc     5zxc\n120_zxc.s  183_zxc.s  245_zxc.s  307_zxc.s  36_zxc.s   60_zxc.s\n120zxc\t   183zxc     245zxc\t 307zxc     36zxc      60zxc\n121_zxc.s  184_zxc.s  246_zxc.s  308_zxc.s  370_zxc.s  61_zxc.s\n121zxc\t   184zxc     246zxc\t 308zxc     370zxc     61zxc\n122_zxc.s  185_zxc.s  247_zxc.s  309_zxc.s  371_zxc.s  62_zxc.s\n122zxc\t   185zxc     247zxc\t 309zxc     371zxc     62zxc\n123_zxc.s  186_zxc.s  248_zxc.s  30_zxc.s   372_zxc.s  63_zxc.s\n123zxc\t   186zxc     248zxc\t 30zxc\t    372zxc     63zxc\n124_zxc.s  187_zxc.s  249_zxc.s  310_zxc.s  373_zxc.s  64_zxc.s\n124zxc\t   187zxc     249zxc\t 310zxc     373zxc     64zxc\n125_zxc.s  188_zxc.s  24_zxc.s\t 311_zxc.s  374_zxc.s  65_zxc.s\n125zxc\t   188zxc     24zxc\t 311zxc     374zxc     65zxc\n126_zxc.s  189_zxc.s  250_zxc.s  312_zxc.s  375_zxc.s  66_zxc.s\n126zxc\t   189zxc     250zxc\t 312zxc     375zxc     66zxc\n127_zxc.s  18_zxc.s   251_zxc.s  313_zxc.s  376_zxc.s  67_zxc.s\n127zxc\t   18zxc      251zxc\t 313zxc     376zxc     67zxc\n128_zxc.s  190_zxc.s  252_zxc.s  314_zxc.s  377_zxc.s  68_zxc.s\n128zxc\t   190zxc     252zxc\t 314zxc     377zxc     68zxc\n129_zxc.s  191_zxc.s  253_zxc.s  315_zxc.s  378_zxc.s  69_zxc.s\n129zxc\t   191zxc     253zxc\t 315zxc     378zxc     69zxc\n12_zxc.s   192_zxc.s  254_zxc.s  316_zxc.s  379_zxc.s  6_zxc.s\n12zxc\t   192zxc     254zxc\t 316zxc     379zxc     6zxc\n'''
res2 = '''0_zxc.s    123_zxc.s  147_zxc.s  170_zxc.s  194_zxc.s  217_zxc.s  240_zxc.s  264_zxc.s    288_zxc.s  310_zxc.s  334_zxc.s  358_zxc.s  381_zxc.s  404_zxc.s  57_zxc.s  80_zxc.s
0zxc       123zxc     147zxc     170zxc     194zxc     217zxc     240zxc     264zxc 288zxc     310zxc     334zxc     358zxc     381zxc     404zxc     57zxc     80zxc
100_zxc.s  124_zxc.s  148_zxc.s  171_zxc.s  195_zxc.s  218_zxc.s  241_zxc.s  265_zxc.s  289_zxc.s  311_zxc.s  335_zxc.s  359_zxc.s  382_zxc.s  405_zxc.s  58_zxc.s  81_zxc.s
100zxc     124zxc     148zxc     171zxc     195zxc     218zxc     241zxc     265zxc 289zxc     311zxc     335zxc     359zxc     382zxc     405zxc     58zxc     81zxc
101_zxc.s  125_zxc.s  149_zxc.s  172_zxc.s  196_zxc.s  219_zxc.s  242_zxc.s  266_zxc.s  28_zxc.s   312_zxc.s  336_zxc.s  35_zxc.s   383_zxc.s  406_zxc.s  59_zxc.s  82_zxc.s
101zxc     125zxc     149zxc     172zxc     196zxc     219zxc     242zxc     266zxc 28zxc      312zxc     336zxc     35zxc      383zxc     406zxc     59zxc     82zxc
102_zxc.s  126_zxc.s  14_zxc.s   173_zxc.s  197_zxc.s  21_zxc.s   243_zxc.s  267_zxc.s  290_zxc.s  313_zxc.s  337_zxc.s  360_zxc.s  384_zxc.s  407_zxc.s  5_zxc.s   83_zxc.s
102zxc     126zxc     14zxc  173zxc     197zxc     21zxc      243zxc     267zxc 290zxc     313zxc     3'''

crash = []
wrong_result = []

for i in range(412):
    #print '<<<<<<<<<<<<<<<<', i, '>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>'
    try:
        s = process('./' + str(i) + 'zxc')
        tmp = s.recv()
        if (res not in tmp):
            wrong_result.append(i)
        s.close()
    except:
        crash.append(i)
        s.close()


for i in crash:
    print i, 'crashed'

for i in wrong_result:
    print i, 'printed wrong'

