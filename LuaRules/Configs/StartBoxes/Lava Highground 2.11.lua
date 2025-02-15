local startSW = { 596, 3566}
local boxSW = {
	{1471, 4095},
	{1456, 4025},
	{1434, 3992},
	{1428, 3959},
	{1427, 3928},
	{1425, 3880},
	{1382, 3813},
	{1371, 3777},
	{1364, 3730},
	{1366, 3669},
	{1381, 3645},
	{1384, 3622},
	{1356, 3543},
	{1325, 3502},
	{1301, 3474},
	{1238, 3451},
	{1157, 3446},
	{1125, 3437},
	{1052, 3381},
	{ 963, 3296},
	{ 890, 3203},
	{ 821, 3118},
	{ 698, 2988},
	{ 661, 2954},
	{ 557, 2964},
	{ 497, 2944},
	{ 473, 2930},
	{ 472, 2913},
	{ 485, 2889},
	{ 583, 2862},
	{ 605, 2859},
	{ 617, 2850},
	{ 616, 2818},
	{ 611, 2781},
	{ 619, 2769},
	{ 620, 2746},
	{ 608, 2740},
	{ 586, 2729},
	{ 561, 2714},
	{ 526, 2696},
	{ 486, 2662},
	{ 441, 2619},
	{ 396, 2571},
	{ 358, 2512},
	{ 278, 2503},
	{ 258, 2499},
	{ 174, 2464},
	{ 118, 2492},
	{  70, 2496},
	{  51, 2524},
	{  54, 2548},
	{  45, 2560},
	{   1, 2566},
	{   1, 4095},
}

local startNE = {3432,  701}
local boxNE = {
	{4095, 1361},
	{4002, 1364},
	{3953, 1391},
	{3864, 1394},
	{3733, 1398},
	{3630, 1395},
	{3622, 1357},
	{3599, 1345},
	{3517, 1349},
	{3392, 1349},
	{3379, 1262},
	{3359, 1235},
	{3335, 1225},
	{3353, 1198},
	{3424, 1169},
	{3459, 1109},
	{3448, 1072},
	{3437, 1061},
	{3453, 1019},
	{3444,  979},
	{3415,  934},
	{3336,  943},
	{3262,  952},
	{3108,  810},
	{2992,  725},
	{2697,  685},
	{2659,  640},
	{2629,  539},
	{2584,  382},
	{2551,  267},
	{2526,   42},
	{2577,   49},
	{2586,    1},
	{4095,    1},
}

local startSE = {3571, 3567}
local boxSE = {
	{2556, 4095},
	{2551, 4010},
	{2540, 3968},
	{2563, 3934},
	{2568, 3908},
	{2586, 3828},
	{2612, 3824},
	{2637, 3785},
	{2670, 3725},
	{2685, 3667},
	{2673, 3619},
	{2675, 3605},
	{2653, 3579},
	{2653, 3563},
	{2676, 3542},
	{2685, 3505},
	{2665, 3448},
	{2651, 3440},
	{2666, 3430},
	{2694, 3438},
	{2730, 3442},
	{2779, 3387},
	{2777, 3349},
	{2828, 3306},
	{2912, 3209},
	{2988, 3142},
	{3059, 3060},
	{3083, 3030},
	{3189, 3026},
	{3254, 3009},
	{3279, 2952},
	{3298, 2929},
	{3325, 2920},
	{3327, 2900},
	{3380, 2872},
	{3411, 2869},
	{3429, 2887},
	{3446, 2891},
	{3477, 2875},
	{3507, 2857},
	{3554, 2860},
	{3577, 2853},
	{3626, 2824},
	{3665, 2805},
	{3677, 2784},
	{3792, 2800},
	{3892, 2808},
	{3958, 2816},
	{4095, 2853},
	{4095, 4095},
}

local startNW = { 332,  340}
local boxNW = {
	{   1, 1466},
	{  47, 1475},
	{ 131, 1485},
	{ 185, 1483},
	{ 266, 1460},
	{ 335, 1455},
	{ 411, 1467},
	{ 414, 1489},
	{ 449, 1487},
	{ 516, 1443},
	{ 526, 1418},
	{ 545, 1400},
	{ 591, 1385},
	{ 630, 1363},
	{ 672, 1357},
	{ 681, 1347},
	{ 692, 1323},
	{ 731, 1285},
	{ 786, 1260},
	{ 832, 1156},
	{ 832, 1143},
	{ 948, 1038},
	{1011,  954},
	{1004,  913},
	{1022,  863},
	{1057,  796},
	{1177,  741},
	{1193,  704},
	{1219,  656},
	{1245,  587},
	{1305,  489},
	{1357,  450},
	{1358,  387},
	{1349,  327},
	{1385,  284},
	{1383,  239},
	{1367,  195},
	{1371,  110},
	{1371,    1},
	{   1,    1},
}

local sputGametype = Spring.Utilities.Gametype

if sputGametype.isBigTeams() then
	return
		{ {startpoints = {startSW, startNW}, boxes = {boxSW, boxNW}, nameLong = "West", nameShort = "W"}
		, {startpoints = {startNE, startSE}, boxes = {boxNE, boxSE}, nameLong = "East", nameShort = "E"}
	}
-- FIXME: elseif sputGametype.isChickens() then players in the middle surrounded by chickens
else
	return
		{ {startpoints = {startSW}, boxes = {boxSW}, nameLong = "South-West", nameShort = "SW"}
		, {startpoints = {startNE}, boxes = {boxNE}, nameLong = "North-East", nameShort = "NE"}
		, {startpoints = {startSE}, boxes = {boxSE}, nameLong = "South-East", nameShort = "SE"}
		, {startpoints = {startNW}, boxes = {boxNW}, nameLong = "North-West", nameShort = "NW"}
	}
end
