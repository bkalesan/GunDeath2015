     
******************************************************************

* DATA PREP - march 23 2015

* PROGRAMS BY: KALESAN/



* from cdc wonder 2014-2015

******************************************************************


* STEP 1- * comparisons immediate

	clear
	
	prtesti 30 4 45 17, count
	
	* all
	prtesti 318857056	32842 321418820	35677, count 
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 7766
	
	* male
	prtesti 156936487	28249 158229297	30696, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 7774
	di 7.8/7.8
	
	* female
	prtesti 161920569	4858 163189523	5222, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 6656
	di 6.7/7.8
	
	* 0-14
	prtesti 61067955	460 61016787	443, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 3614
	di -3.6/7.8
	
	* 15-44
	prtesti 128009458	17407 128575201	19626, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 12251
	di 12.3/7.8
	
	* 45-64
	prtesti 83536432	9863 84065980	10127, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 2029
	di 2/7.8
	
	* 65-
	prtesti 46243211	5865 47760852	6052, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 90
	di -0.09/7.8
	
	* white
	prtesti 250630467	23810 251875054	25188, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 5264
	di 5.1/7.8
	
	* black
	prtesti 44309394	7488 44863196	8748, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 15384
	di (100* r(proportion))/7.8
	
	* asian
	prtesti 19398214	427 20102717	503, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 13670
	di (100* r(proportion))/7.8
	
	* native
	prtesti 4518981	343 4577853	389, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 11952
	di (100* r(proportion))/7.8
	
	* hisp
	prtesti 55387539	2991 56592793	3282, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 7392
	di (100* r(proportion))/7.8
	
	* non-hisp
	prtesti 263469517	29509 264826027	31779, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 7140
	di (100* r(proportion))/7.8
	
	* homicide
	prtesti 318857056	11160 321418820	13500, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 20003
	di (100* r(proportion))/7.8
	
	* suicide
	prtesti 318857056	20407 321418820	20892, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 1560
	di (100* r(proportion))/7.8
	
	* unintentional
	prtesti 318857056	638 321418820	643, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 19
	di (100* r(proportion))/7.8
	
	* undetermined
	prtesti 318857056	319 321418820	321, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 175
	di (100* r(proportion))/7.8
	
	* legal
	prtesti 318857056	638 321418820	321, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 50087
	di (100* r(proportion))/7.8
	
	* central metro
	prtesti 97933810	9402 98997449	10494, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 10415
	di (100* r(proportion))/7.8
	
	* fringe metro
	prtesti 79063551	6562 79867097	6869, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 3625
	di (100* r(proportion))/7.8
	
	* medium metro
	prtesti 66466520	7311 67041154	7978, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 8187
	di (100* r(proportion))/7.8
	
	* small metro
	prtesti 29204061	3388 29346517	3522, count	
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 3450
	di (100* r(proportion))/7.8

	* micro metro
	prtesti 27242864	3378 27260617	3735, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 10496
	di (100* r(proportion))/7.8
	
	* noncore metro
	prtesti 18946250	2709 18905986	2836, count
	di 100000*(r(P_2)-r(P_1))/r(P_1)
	cii proportions 100000 4911
	di (100* r(proportion))/7.8
	
*******************************************************************	

* STEP 2: GET DATA for all

	
	clear
	import excel "/Users/kalesan/Google Drive/Gun Violence Research/189_1_2014-2015/08_Database/Original/state.xlsx", sheet("data") firstrow case(lower)
	count
	
	* aa_rate
	hist aa_rate
	
	tab censusdivision, m
	/*
	               Census Division |      Freq.     Percent        Cum.
-------------------------------+-----------------------------------
       Division 1: New England |         12       11.76       11.76
   Division 2: Middle Atlantic |          6        5.88       17.65
Division 3: East North Central |         10        9.80       27.45
Division 4: West North Central |         14       13.73       41.18
    Division 5: South Atlantic |         18       17.65       58.82
Division 6: East South Central |          8        7.84       66.67
Division 7: West South Central |          8        7.84       74.51
          Division 8: Mountain |         16       15.69       90.20
           Division 9: Pacific |         10        9.80      100.00
-------------------------------+-----------------------------------
                         Total |        102      100.00

						 */
	gen cd=1 if censusdivision=="Division 1: New England"
	replace cd=2 if censusdivision=="Division 2: Middle Atlantic"
	replace cd=3 if censusdivision=="Division 3: East North Central"
	replace cd=4 if censusdivision=="Division 4: West North Central"
	replace cd=5 if censusdivision=="Division 5: South Atlantic"
	replace cd=6 if censusdivision=="Division 6: East South Central"
	replace cd=7 if censusdivision=="Division 7: West South Central"
	replace cd=8 if censusdivision=="Division 8: Mountain"
	replace cd=9 if censusdivision=="Division 9: Pacific"
	label define cd 1 "Division 1: New England" 2 "Division 2: Middle Atlantic" 3 "Division 3: East North Central" 4 "Division 4: West North Central" ///
		5 "Division 5: South Atlantic" 6 "Division 6: East South Central" 7 "Division 7: West South Central" 8 "Division 8: Mountain" ///
		9 "Division 9: Pacific"
	label value cd cd
	tab cd, m
	
	* age adjusted deaths
	gen aadeaths=(aa_rate*population)/100000
	format aadeaths %9.0fc
	
	keep censusdivision cd state statecode aadeaths population year aa_rate aa_rate_lci aa_rate_uci aa_rate_se
	reshape wide population aadeaths aa_rate aa_rate_lci aa_rate_uci aa_rate_se, i(statecode) j(year)
	
	save "$dd/wide.dta", replace
		
*******************************************************************

* STEP 3: TEST

	* test
	clear
	use "$dd/wide.dta", clear
	
	* annual percentage
	gen ap=100*(aa_rate2015-aa_rate2014)/aa_rate2014
	format ap %9.1fc
	
	* ap in comparison to national ap
	gen apratio=ap/7.8
	format apratio %9.1fc
	
	
	sort cd ap
	br cd state aa_rate2014 aa_rate2015 ap apratio population2014 aadeaths2014 population2015 aadeaths2015
	
	
	* Vermont	
	prtesti 626562	65	626042	60, count
	* Massachusetts		
	prtesti 6745408	216	6794422	204, count
	* New Hampshire	
	prtesti 	1326813	115	1330608	118, count
	* Maine	
	prtesti 	1330089	125	1329328	130, count
	* Connecticut	
	prtesti 	3596677	180	3590886	190, count
	* Rhode Island		
	prtesti 1055173	32	1056298	50, count
	* New York		
	prtesti 19746227	829	19795791	831, count
	* New Jersey		
	prtesti 8938175	474	8958013	484, count
	* Pennsylvania		
	prtesti 12787209	1343	12802503	1459, count
	* Indiana		
	prtesti 6596855	818	6619680	841, count
	* Michigan		
	prtesti 9909877	1100	9922576	1161, count
	* Illinois		
	prtesti 12880580	1159	12859995	1222, count
	* Ohio		
	prtesti 11594163	1194	11613423	1382, count
	* Wisconsin		
	prtesti 5757564	472	5771337	600, count
	* Nebraska		
	prtesti 1881503	179	1896190	169, count
	* Kansas		
	prtesti 2904021	328	2911641	332, count
	* Iowa		
	prtesti 3107126	233	3123899	244, count
	* North Dakota		
	prtesti 739482	91	756927	97, count
	* South Dakota		
	prtesti 853175	88	858469	95, count
	* Minnesota		
	prtesti 5457173	360	5489594	406, count
	* Missouri		
	prtesti 6063589	928	6083672	1101, count
	* West Virginia		
	prtesti 1850326	270	1844128	258, count
	* Georgia		
	prtesti 10097343	1383	10214860	1440, count
	* Florida		
	prtesti 19893297	2288	20271272	2433, count
	* Virginia		
	prtesti 8326289	858	8382993	914, count
	* North Carolina		
	prtesti 9943964	1173	10042802	1255, count
	* Delaware		
	prtesti 935614	104	945934	114, count
	* South Carolina		
	prtesti 4832482	749	4896146	847, count
	* District of Columbia		
	prtesti 658893	77	672228	102, count
	* Maryland		
	prtesti 5976407	538	6006401	715, count
	* Tennessee		
	prtesti 6549352	996	6600299	1056, count
	* Mississippi		
	prtesti 2994079	548	2992333	586, count
	* Kentucky		
	prtesti 4413457	613	4425092	673, count
	* Alabama		
	prtesti 4849377	820	4858979	952, count
	* Arkansas		
	prtesti 2966369	492	2978204	503, count
	* Louisiana		
	prtesti 4649676	883	4670724	953, count
	* Texas		
	prtesti 26956958	2884	27469114	3214, count
	* Oklahoma		
	prtesti 3878051	609	3911338	704, count
	* Nevada		
	prtesti 2839099	420	2890845	431, count
	* Arizona		
	prtesti 6731484	909	6828065	942, count
	* Colorado		
	prtesti 5355866	653	5456574	688, count
	* Utah		
	prtesti 2942902	362	2995919	383, count
	* Idaho		
	prtesti 1634464	216	1654930	243, count
	* New Mexico		
	prtesti 2085572	334	2085109	388, count
	* Montana		
	prtesti 1023579	165	1032949	198, count
	* Wyoming		
	prtesti 584153	95	586107	115, count
	* Oregon		
	prtesti 3970239	465	4028977	459, count
	* Washington		
	prtesti 7061530	685	7170351	703, count
	* California		
	prtesti 38802500	2871	39144818	3014, count
	* Alaska		
	prtesti 736732	141	738432	173, count
	* Hawaii		
	prtesti 1419561	37	1431603	52, count
	
*******************************************************************

	* for figure
	
	clear
	use "$dd/forfig.dta", clear
	rename cd censusdivision
	gen cd=1 if censusdivision=="Division 1: New England"
	replace cd=2 if censusdivision=="Division 2: Middle Atlantic"
	replace cd=3 if censusdivision=="Division 3: East North Central"
	replace cd=4 if censusdivision=="Division 4: West North Central"
	replace cd=5 if censusdivision=="Division 5: South Atlantic"
	replace cd=6 if censusdivision=="Division 6: East South Central"
	replace cd=7 if censusdivision=="Division 7: West South Central"
	replace cd=8 if censusdivision=="Division 8: Mountain"
	replace cd=9 if censusdivision=="Division 9: Pacific"
	label define cd 1 "Division 1: New England" 2 "Division 2: Middle Atlantic" 3 "Division 3: East North Central" 4 "Division 4: West North Central" ///
		5 "Division 5: South Atlantic" 6 "Division 6: East South Central" 7 "Division 7: West South Central" 8 "Division 8: Mountain" ///
		9 "Division 9: Pacific"
	label value cd cd
	tab cd, m
	
	gen n=1	if state=="Alabama" 
	replace n=2	if state=="Alaska" 
	replace n=4	if state=="Arizona" 
	replace n=5	if state=="Arkansas" 
	replace n=6	if state=="California" 
	replace n=8	if state=="Colorado" 
	replace n=9	if state=="Connecticut" 
	replace n=10	if state=="Delaware" 
	replace n=11	if state=="District of Columbia" 
	replace n=12	if state=="Florida" 
	replace n=13	if state=="Georgia" 
	replace n=15	if state=="Hawaii" 
	replace n=16	if state=="Idaho" 
	replace n=17	if state=="Illinois" 
	replace n=18	if state=="Indiana" 
	replace n=19	if state=="Iowa" 
	replace n=20	if state=="Kansas" 
	replace n=21	if state=="Kentucky" 
	replace n=22	if state=="Louisiana" 
	replace n=23	if state=="Maine" 
	replace n=24	if state=="Maryland" 
	replace n=25	if state=="Massachusetts" 
	replace n=26	if state=="Michigan" 
	replace n=27	if state=="Minnesota" 
	replace n=28	if state=="Mississippi" 
	replace n=29	if state=="Missouri" 
	replace n=30	if state=="Montana" 
	replace n=31	if state=="Nebraska" 
	replace n=32	if state=="Nevada" 
	replace n=33	if state=="New Hampshire" 
	replace n=34	if state=="New Jersey" 
	replace n=35	if state=="New Mexico" 
	replace n=36	if state=="New York" 
	replace n=37	if state=="North Carolina" 
	replace n=38	if state=="North Dakota" 
	replace n=39	if state=="Ohio" 
	replace n=40	if state=="Oklahoma" 
	replace n=41	if state=="Oregon" 
	replace n=42	if state=="Pennsylvania"  
	replace n=44	if state=="Rhode Island" 
	replace n=45	if state=="South Carolina" 
	replace n=46	if state=="South Dakota" 
	replace n=47	if state=="Tennessee" 
	replace n=48	if state=="Texas" 
	replace n=49	if state=="Utah" 
	replace n=50	if state=="Vermont" 
	replace n=51	if state=="Virginia" 
	replace n=53	if state=="Washington" 
	replace n=54	if state=="West Virginia" 
	replace n=55	if state=="Wisconsin" 
	replace n=56	if state=="Wyoming" 
	tab n, m
	
	label define n ///
	1	"Alabama" ///
	2	"Alaska" ///
	4	"Arizona" ///
	5	"Arkansas" ///
	6	"California" ///
	8	"Colorado" ///
	9	"Connecticut" ///
	10	"Delaware" ///
	11	"District of Columbia" ///
	12	"Florida" ///
	13	"Georgia" ///
	15	"Hawaii" ///
	16	"Idaho" ///
	17	"Illinois" ///
	18	"Indiana" ///
	19	"Iowa" ///
	20	"Kansas" ///
	21	"Kentucky" ///
	22	"Louisiana" ///
	23	"Maine" ///
	24	"Maryland" ///
	25	"Massachusetts" ///
	26	"Michigan" ///
	27	"Minnesota" ///
	28	"Mississippi" ///
	29	"Missouri" ///
	30	"Montana" ///
	31	"Nebraska" ///
	32	"Nevada" ///
	33	"New Hampshire" ///
	34	"New Jersey" ///
	35	"New Mexico" ///
	36	"New York" ///
	37	"North Carolina" ///
	38	"North Dakota" ///
	39	"Ohio" ///
	40	"Oklahoma" ///
	41	"Oregon" ///
	42	"Pennsylvania"  ///
	44	"Rhode Island" ///
	45	"South Carolina" ///
	46	"South Dakota" ///
	47	"Tennessee" ///
	48	"Texas" ///
	49	"Utah" ///
	50	"Vermont" ///
	51	"Virginia" ///
	53	"Washington" ///
	54	"West Virginia" ///
	55	"Wisconsin" ///
	56	"Wyoming" 
	
	label value n n
	tab n, m
	
	gen annual=ap
	format ap apratio %5.1fc
	tostring ap apratio, force replace format(%5.1fc)
	
	gen ratel=state+": "+ap+"%"+" "+"("+apratio+")"+"; "+"p="+p
	
	*graph hbar (asis) annual, over(cd) over(n)
	
	sort cd annual
	
		graph hbar (asis) annual, ///
		over(ratel, gap(15) sort(annual) label(labsize(tiny)) ) ///
		bar(1, color(gs15))  ///
		over(cd, label(labsize(tiny)) ) /// 
		bar(1, col(gs1)) bar(2, col(gs15))  nofill   ///
		bargap(-20)  xsize(7.0) ysize(10.0) ///
		blabel(annual,  size(vsmall) ) ///
		graphregion(fcolor(white) lc(white) lw(thick)) plotr(fcolor(white) lc(white) lw(thick)) ///
		ytitle("Percentage change in gun death rate from 2014 to 2015", size(tiny)) ///
		ylabel(-10 "-10" 0 "0" 10 "10" 20 "20" 30 "30" 40 "40" 50 "50" 60 "60" , nogrid labsize(small))  ///
		subtitle("National % change = 7.8% (95% CI=7.6-7.9), p<0.0001", size(vsmall) col(black) pos (11) ring(1) ) legend(off) 
		
	graph export "$gd/Figure.tif", replace
	graph export "$gd/Figure.eps", replace
	graph export "$gd/Figure.pdf", replace
	


*******************************************************************



