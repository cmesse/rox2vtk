res_inner = 5 ;
res_outer = 10 ;
res_gap = 1 ;
res_padhole = 3 ;  
res_yokehole = 3 ;
res_coolinghole = 6 ;

//res_inner = 4 ;
//res_outer = 8 ;
//res_gap = 0.5 ;
//res_padhole = 2 ;  
//res_yokehole = 2 ;
//res_coolinghole = 4 ;

deg = 0.01745329251994330;


iron_di = 232.2;
iron_do = 582;

pad_width = 147.1 ;
pad_gap   = 2.0 ;

boxa_center = 49.05 ;
boxa_length = 10 ;
boxa_width  = 8 ;

boxb_center = 88.05 ;
boxb_length = 45 ;
boxb_width  = 6 ;

ygap        = 2 ;

padhole_angle  = 15 * deg ;
padhole_diameter = 12 ;
padhole_radius   = 132 ;

yokehole_angle  = 15 * deg ;
yokehole_diameter = 30 ;
yokehole_radius   = 235 ;

coolinghole_diameter = 50 ;
coolinghole_radius   = 148.1 + 50 ;

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
Point(10) = {pad_width-0.5*boxa_width, boxb_center-0.5*boxb_length, 0, res_gap};
Point(11) = {pad_width-0.5*boxa_width, boxb_center+0.5*boxb_length, 0, res_gap};
Point(12) = {pad_width-0.5*pad_gap, boxb_center+0.5*boxb_length, 0, res_gap};
Point(13) = {pad_width-0.5*pad_gap, pad_width-0.5*pad_gap, 0, res_gap};
Point(14) = {boxb_center+0.5*boxb_length, pad_width-0.5*pad_gap, 0, res_gap};
Point(15) = {boxb_center+0.5*boxb_length, pad_width-0.5*boxa_width, 0, res_gap};
Point(16) = {boxb_center-0.5*boxb_length, pad_width-0.5*boxa_width, 0, res_gap};
Point(17) = {boxb_center-0.5*boxb_length, pad_width-0.5*pad_gap, 0, res_gap};
Point(18) =  {boxa_center+0.5*boxa_length, pad_width-0.5*pad_gap, 0, res_gap};
Point(19) =  {boxa_center+0.5*boxa_length, pad_width-0.5*boxa_width, 0, res_gap};
Point(20) =  {boxa_center-0.5*boxa_length, pad_width-0.5*boxa_width, 0, res_gap};
Point(21) =  {boxa_center-0.5*boxa_length, pad_width-0.5*pad_gap, 0, res_gap};
Point(22) =  {0, pad_width-0.5*pad_gap, 0, res_gap};

px = Cos(padhole_angle)*padhole_radius ;
py = Sin(padhole_angle)*padhole_radius ;
Point(23) =  { px, py, 0, res_padhole};
Point(24) =  { px+0.5*padhole_diameter, py, 0, res_padhole};
Point(25) =  { px, py+0.5*padhole_diameter, 0, res_padhole};
Point(26) =  { px-0.5*padhole_diameter, py, 0, res_padhole};
Point(27) =  { px, py-0.5*padhole_diameter, 0, res_padhole};

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
Curve Loop(1) = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21};
Curve Loop(2) = {24, 25, 22, 23};
Plane Surface(1) = {1, 2};

// yoke
Point(28) = {0, pad_width+0.5*pad_gap, 0, res_gap};
Point(29) = {boxa_center-0.5*boxa_length, pad_width+0.5*pad_gap, 0, res_gap};
Point(30) = {boxa_center-0.5*boxa_length, pad_width+0.5*boxa_width, 0, res_gap};
Point(31) = {boxa_center+0.5*boxa_length, pad_width+0.5*boxa_width, 0, res_gap};
Point(32) = {boxa_center+0.5*boxa_length, pad_width+0.5*pad_gap, 0, res_gap};
Point(33) = {boxb_center-0.5*boxb_length, pad_width+0.5*pad_gap, 0, res_gap};
Point(34) = {boxb_center-0.5*boxb_length, pad_width+0.5*boxa_width, 0, res_gap};
Point(35) = {boxb_center+0.5*boxb_length, pad_width+0.5*boxa_width, 0, res_gap};
Point(36) = {boxb_center+0.5*boxb_length, pad_width+0.5*pad_gap, 0, res_gap};
Point(37) = {pad_width+0.5*pad_gap, pad_width+0.5*pad_gap, 0, res_gap};
Point(38) = {pad_width+0.5*pad_gap, boxb_center+0.5*boxb_length, 0, res_gap};
Point(39) = {pad_width+0.5*boxa_width, boxb_center+0.5*boxb_length, 0, res_gap};
Point(40) = {pad_width+0.5*boxa_width, boxb_center-0.5*boxb_length, 0, res_gap};
Point(41) = {pad_width+0.5*pad_gap, boxb_center-0.5*boxb_length, 0, res_gap};
Point(42) = {pad_width+0.5*pad_gap, boxa_center+0.5*boxa_length, 0, res_gap};
Point(43) = {pad_width+0.5*boxa_width, boxa_center+0.5*boxa_length, 0, res_gap};
Point(44) = {pad_width+0.5*boxa_width, boxa_center-0.5*boxa_length, 0, res_gap};
Point(45) = {pad_width+0.5*pad_gap, boxa_center-0.5*boxa_length, 0, res_gap};
Point(46) = {pad_width+0.5*pad_gap, ygap, 0, res_gap};

px = Sqrt(0.25*coolinghole_diameter*coolinghole_diameter-ygap*ygap);

Point(47) = {coolinghole_radius, 0, 0, res_coolinghole};

Point(48) = {coolinghole_radius-px, ygap, 0, res_coolinghole};
Point(49) = {coolinghole_radius, 0.5*coolinghole_diameter, 0, res_coolinghole};
Point(50) = {coolinghole_radius+px, ygap, 0, res_coolinghole};

px = Sqrt(0.25*iron_do*iron_do-ygap*ygap);
Point(51) = {px, ygap, 0, res_outer};
Point(52) = {0, 0.5*iron_do, 0, res_outer};


px = Cos(yokehole_angle)*yokehole_radius ;
py = Sin(yokehole_angle)*yokehole_radius ;
Point(53) =  { px, py, 0, res_yokehole};
Point(54) =  { px+0.5*yokehole_diameter, py, 0, res_yokehole};
Point(55) =  { px, py+0.5*yokehole_diameter, 0, res_yokehole};
Point(56) =  { px-0.5*yokehole_diameter, py, 0, res_yokehole};
Point(57) =  { px, py-0.5*yokehole_diameter, 0, res_yokehole};

Line(26) = {28, 29};
Line(27) = {29, 30};
Line(28) = {30, 31};
Line(29) = {31, 32};
Line(30) = {32, 33};
Line(31) = {33, 34};
Line(32) = {34, 35};
Line(33) = {35, 36};
Line(34) = {36, 37};
Line(35) = {37, 38};
Line(36) = {38, 39};
Line(37) = {39, 40};
Line(38) = {40, 41};
Line(39) = {41, 42};
Line(40) = {42, 43};
Line(41) = {43, 44};
Line(42) = {44, 45};
Line(43) = {45, 46};
Line(44) = {46, 48};
Circle(45) = {48, 47, 49};
Circle(46) = {49, 47, 50};
Line(47) = {50, 51};
Circle(48) = {51, 1, 52};
Line(49) = {52, 28};
Circle(50) = {56, 53, 55};
Circle(51) = {55, 53, 54};
Circle(52) = {54, 53, 57};
Circle(53) = {57, 53, 56};
Curve Loop(3) = {49, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48};
Curve Loop(4) = {50, 51, 52, 53};
Plane Surface(2) = {3, 4};



//Symmetry{1, 0, 0, 0} { Duplicata{ Surface{1};Surface{2};  }  }
//Symmetry{0, 1, 0, 0} { Duplicata{ Surface{1};Surface{2};  }  }
//Rotate{ {0, 0, 1}, {0,0,0}, Pi}  { Duplicata{ Surface{1};Surface{2};  }  }
