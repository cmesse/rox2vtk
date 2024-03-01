res_inner = 5 ;
res_outer = 10 ;
res_gap = 1 ;
res_padhole = 3 ;  
res_yokehole = 3 ;
res_coolinghole = 6 ;

deg = 0.01745329251994330;


iron_di = 232.2;
iron_do = 550 ;

pad_width = 147.1 ;
pad_gap   = 2.0 ;

boxa_center = 49.05 ;
boxa_length = 10 ;
boxa_width  = 8 ;

boxb_center = 88.05 ;
boxb_length = 45 ;
boxb_width  = 6 ;

ygap        = 2 ;

padholeA_angle  = 19 * deg ;
padholeA_diameter = 10 ;
padholeA_radius   = 132 ;

padholeB_angle    = 39 * deg ;
padholeB_diameter = 10 ;
padholeB_radius   = 132 ;

yokehole_angle  = 19 * deg ;
yokehole_diameter = 25 ;
yokehole_radius   = 205.0 ;

coolinghole_diameter = 50 ;
coolinghole_radius   = 148.1 + 44.5 ;

// pad
Point(1) = {0, 0, 0, res_inner};
Point(2) = {0, 0.5*iron_di, 0, res_inner};


px = Sqrt(0.25*iron_di*iron_di-ygap*ygap);

Point(3) = {px, ygap, 0, res_inner};
Point(4) = {pad_width-0.5*pad_gap, ygap, 0, res_gap};
Point(5) = {pad_width-0.5*pad_gap, boxa_center-0.5*boxa_length, 0, res_gap};
Point(6) = {pad_width-0.5*boxa_width, boxa_center-0.5*boxa_length, 0, res_gap};
Point(7) = {pad_width-0.5*boxa_width, boxa_center+0.5*boxa_length, 0, res_gap};
Point(8) = {pad_width-0.5*pad_gap, boxa_center+0.5*boxa_length, 0, res_gap};
Point(9) = {pad_width-0.5*pad_gap, boxb_center-0.5*boxb_length, 0, res_gap};
Point(10) = {pad_width-0.5*boxb_width, boxb_center-0.5*boxb_length, 0, res_gap};
Point(11) = {pad_width-0.5*boxb_width, boxb_center+0.5*boxb_length, 0, res_gap};
Point(12) = {pad_width-0.5*pad_gap, boxb_center+0.5*boxb_length, 0, res_gap};
Point(13) = {pad_width-0.5*pad_gap, pad_width-0.5*pad_gap, 0, res_gap};
Point(14) = {boxb_center+0.5*boxb_length, pad_width-0.5*pad_gap, 0, res_gap};
Point(15) = {boxb_center+0.5*boxb_length, pad_width-0.5*boxb_width, 0, res_gap};
Point(16) = {boxb_center-0.5*boxb_length, pad_width-0.5*boxb_width, 0, res_gap};
Point(17) = {boxb_center-0.5*boxb_length, pad_width-0.5*pad_gap, 0, res_gap};
Point(18) =  {boxa_center+0.5*boxa_length, pad_width-0.5*pad_gap, 0, res_gap};
Point(19) =  {boxa_center+0.5*boxa_length, pad_width-0.5*boxa_width, 0, res_gap};
Point(20) =  {boxa_center-0.5*boxa_length, pad_width-0.5*boxa_width, 0, res_gap};
Point(21) =  {boxa_center-0.5*boxa_length, pad_width-0.5*pad_gap, 0, res_gap};
Point(22) =  {0, pad_width-0.5*pad_gap, 0, res_gap};

px = Cos(padholeA_angle)*padholeA_radius ;
py = Sin(padholeA_angle)*padholeA_radius ;
Point(23) =  { px, py, 0, res_padhole};
Point(24) =  { px+0.5*padholeA_diameter, py, 0, res_padhole};
Point(25) =  { px, py+0.5*padholeA_diameter, 0, res_padhole};
Point(26) =  { px-0.5*padholeA_diameter, py, 0, res_padhole};
Point(27) =  { px, py-0.5*padholeA_diameter, 0, res_padhole};

px = Cos(padholeB_angle)*padholeB_radius ;
py = Sin(padholeB_angle)*padholeB_radius ;
Point(28) =  { px, py, 0, res_padhole};
Point(29) =  { px+0.5*padholeB_diameter, py, 0, res_padhole};
Point(30) =  { px, py+0.5*padholeB_diameter, 0, res_padhole};
Point(31) =  { px-0.5*padholeB_diameter, py, 0, res_padhole};
Point(32) =  { px, py-0.5*padholeB_diameter, 0, res_padhole};


Circle(1) = {2, 1, 3};
Line(2) = {3, 4};
Line(3) = {4, 5};
Line(4) = {5, 6};
Line(5) = {6, 7};
Line(6) = {7, 8};
Line(7) = {8, 9};
Line(8) = {9, 10};
Line(9) = {10, 11};
Line(10) = {11, 12};
Line(11) = {12, 13};
Line(12) = {13, 14};
Line(13) = {14, 15};
Line(14) = {15, 16};
Line(15) = {16, 17};
Line(16) = {17, 18};
Line(17) = {18, 19};
Line(18) = {19, 20};
Line(19) = {20, 21};
Line(20) = {21, 22};
Line(21) = {22, 2};
Circle(22) = {26, 23, 25};
Circle(23) = {25, 23, 24};
Circle(24) = {24, 23, 27};
Circle(25) = {27, 23, 26};

Circle(26) = {30, 28, 29};
Circle(27) = {29, 28, 32};
Circle(28) = {32, 28, 31};
Circle(29) = {31, 28, 30};
Curve Loop(1) = {14, 15, 16, 17, 18, 19, 20, 21, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};
Curve Loop(2) = {24, 25, 22, 23};
Curve Loop(3) = {26, 27, 28, 29};
Plane Surface(1) = {1, 2, 3};

// yoke
Point(33) = {0, pad_width+0.5*pad_gap, 0, res_gap};
Point(34) = {boxa_center-0.5*boxa_length, pad_width+0.5*pad_gap, 0, res_gap};
Point(35) = {boxa_center-0.5*boxa_length, pad_width+0.5*boxa_width, 0, res_gap};
Point(36) = {boxa_center+0.5*boxa_length, pad_width+0.5*boxa_width, 0, res_gap};
Point(37) = {boxa_center+0.5*boxa_length, pad_width+0.5*pad_gap, 0, res_gap};
Point(38) = {boxb_center-0.5*boxb_length, pad_width+0.5*pad_gap, 0, res_gap};
Point(39) = {boxb_center-0.5*boxb_length, pad_width+0.5*boxb_width, 0, res_gap};
Point(40) = {boxb_center+0.5*boxb_length, pad_width+0.5*boxb_width, 0, res_gap};
Point(41) = {boxb_center+0.5*boxb_length, pad_width+0.5*pad_gap, 0, res_gap};
Point(42) = {pad_width+0.5*pad_gap, pad_width+0.5*pad_gap, 0, res_gap};
Point(43) = {pad_width+0.5*pad_gap, boxb_center+0.5*boxb_length, 0, res_gap};
Point(44) = {pad_width+0.5*boxb_width, boxb_center+0.5*boxb_length, 0, res_gap};
Point(45) = {pad_width+0.5*boxb_width, boxb_center-0.5*boxb_length, 0, res_gap};
Point(46) = {pad_width+0.5*pad_gap, boxb_center-0.5*boxb_length, 0, res_gap};
Point(47) = {pad_width+0.5*pad_gap, boxa_center+0.5*boxa_length, 0, res_gap};
Point(48) = {pad_width+0.5*boxa_width, boxa_center+0.5*boxa_length, 0, res_gap};
Point(49) = {pad_width+0.5*boxa_width, boxa_center-0.5*boxa_length, 0, res_gap};
Point(50) = {pad_width+0.5*pad_gap, boxa_center-0.5*boxa_length, 0, res_gap};
Point(51) = {pad_width+0.5*pad_gap, ygap, 0, res_gap};

px = Sqrt(0.25*coolinghole_diameter*coolinghole_diameter-ygap*ygap);

Point(52) = {coolinghole_radius, 0, 0, res_coolinghole};

Point(53) = {coolinghole_radius-px, ygap, 0, res_coolinghole};
Point(54) = {coolinghole_radius, 0.5*coolinghole_diameter, 0, res_coolinghole};
Point(55) = {coolinghole_radius+px, ygap, 0, res_coolinghole};

px = Sqrt(0.25*iron_do*iron_do-ygap*ygap);
Point(56) = {px, ygap, 0, res_outer};
Point(57) = {0, 0.5*iron_do, 0, res_outer};


px = Cos(yokehole_angle)*yokehole_radius ;
py = Sin(yokehole_angle)*yokehole_radius ;
Point(58) =  { px, py, 0, res_yokehole};
Point(59) =  { px+0.5*yokehole_diameter, py, 0, res_yokehole};
Point(60) =  { px, py+0.5*yokehole_diameter, 0, res_yokehole};
Point(61) =  { px-0.5*yokehole_diameter, py, 0, res_yokehole};
Point(62) =  { px, py-0.5*yokehole_diameter, 0, res_yokehole};

Circle(30) = {56, 1, 57};
Line(31) = {57, 33};
Line(32) = {33, 34};
Line(33) = {34, 35};
Line(34) = {35, 36};
Line(35) = {36, 37};
Line(36) = {37, 38};
Line(37) = {38, 39};
Line(38) = {39, 40};
Line(39) = {40, 41};
Line(40) = {41, 42};
Line(41) = {42, 43};
Line(42) = {43, 44};
Line(43) = {44, 45};
Line(44) = {45, 46};
Line(45) = {46, 47};
Line(46) = {47, 48};
Line(47) = {48, 49};
Line(48) = {49, 50};
Line(49) = {50, 51};
Line(50) = {51, 53};
Circle(51) = {53, 52, 54};
Circle(52) = {54, 52, 55};
Line(53) = {55, 56};
Circle(54) = {60, 58, 59};
Circle(55) = {59, 58, 62};
Circle(56) = {62, 58, 61};
Circle(57) = {61, 58, 60};
Curve Loop(4) = {31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 30};
Curve Loop(5) = {54, 55, 56, 57};
Plane Surface(2) = {4, 5};