#region
($Mill)
($Millimeters)
$AddRegPart 3 30 30
#endregion
(test3522)

G54 (for60x60x31)

(G92 X60.0 Y60.0 Z30.0;)

((G90 G28 U0 W0;))

%5

 
O0001; (KADAI-1)
G17 G40 G49 G80 G90;

N1;

(preparation)
G91 G28 Z0;
    G28 Y0 G49;
(T01 M06); 
T15 M06;	
(end of preparation)



G90 G54 G00 X0 Y0 M08; 
G43 Z100.0 H01 S900 M03;

G00 X60.0 Y-15.0;
    Z0.2;
	
G01 X-60.0 F900;
G00 Y30.0;
G01 X60.0;

(termination)
G00 Z100 M09; 
G91 G28 Z0 M05;
G49 G90;
(end of termination)


N2; (fai50 finsh using  face milling cutter)

(preparation)
G91 G28 Z0;
    G28 Y0 G49;
(T01 M06); 
T15 M06;
(end of preparation)

G90 G54 G00 X0 Y0 M08;
G43 Z100.0 H01 S1800 M03;
G00 X60.0  Y-15.0;
    Z0;
G01 X-60.0       F900;
G00        Y30.0;
G01 X60.0;

(termination)
G00 Z100 M09; 
G91 G28 Z0 M05;
G49 G90;
(end of termination)


N31; (fai12 endmill)

(preparation)
G91 G28 Z0;
    G28 Y0 G49;
(T02 M06); 
T1 M06;
(end of preparation)

G90 G54 G00 X0 Y0 M08;
G43 Z100.0 H02 S1700 M03;

G00 X41.0 Y0; 
    Z-5.8;
	
$DefineDoffsetDiameter 2 12.4 

	
G41;
G00       Y16.0 D2; 
G03 X25.0 Y0     R16.0 F340; (entry point)

G01       Y-19.0; (RIGHT SIDE)
G02 X19.0 Y-25.0 R6.0; (CURVE RIGHT TO BOTTOM)
G01 X-19.0;       (BOTTOM LINE)
G02 X-25.0 Y-19.0 R6.0; (CURVE BOTTOM TO LEFT)
G01       Y19.0;  (LEFT SIDE)

G02 X-19.0 Y25.0 R6.0; (LEFT TO TOP)
G01 X19.0; (TOP)
G02 X25.0  Y19.0 R6.0; (CURVE TOP TO RIGHT)
G01        Y0;  (GO ENTRY POINT)
G03 X41.0  Y-16.0 R16.0; (ESCAPE)
G40 G00 Y0;

(termination)
G00 Z100 M09; 
G91 G28 Z0 M05;
G49 G90;
(end of termination)


N3; (finish fai12 endmill)

(preparation)
G91 G28 Z0;
    G28 Y0 G49;
(T02 M06); 
T1 M06;
(end of preparation)

G90 G54 G00 X0 Y0 M08;
G43 Z100.0 H02 S1700 M03;

G00 X41.0 Y0; 
    Z-5.8;
	

$DefineDoffsetDiameter 3 12.0 
	
G41 G00       Y16.0 D3; 
G03 X25.0 Y0     R16.0 F900; (entry point)

G01       Y-19.0; (RIGHT SIDE)
G02 X19.0 Y-25.0 R6.0; (CURVE RIGHT TO BOTTOM)
G01 X-19.0;       (BOTTOM LINE)
G02 X-25.0 Y-19.0 R6.0; (CURVE BOTTOM TO LEFT)
G01       Y19.0;  (LEFT SIDE)

G02 X-19.0 Y25.0 R6.0; (LEFT TO TOP)
G01 X19.0; (TOP)
G02 X25.0  Y19.0 R6.0; (CURVE TOP TO RIGHT)
G01        Y0;  (GO ENTRY POINT)
G03 X41.0  Y-16.0 R16.0; (ESCAPE)
G40 G00 Y0;

(termination)
G00 Z100 M09; 
G91 G28 Z0 M05;
G49 G90;
(end of termination)

N4; (chamfer)

(preparation)
G91 G28 Z0;
    G28 Y0 G49;
(T02 M06); 
T2 M06;
(end of preparation)

G43 Z29.0 H04 S7500 M03;

$DefineDoffsetDiameter 4 15.0 
	
G41 G00       Y16.0 D3; 
G03 X25.0 Y0     R16.0 F900; (entry point)

G01       Y-19.0; (RIGHT SIDE)
G02 X19.0 Y-25.0 R6.0; (CURVE RIGHT TO BOTTOM)
G01 X-19.0;       (BOTTOM LINE)
G02 X-25.0 Y-19.0 R6.0; (CURVE BOTTOM TO LEFT)
G01       Y19.0;  (LEFT SIDE)

G02 X-19.0 Y25.0 R6.0; (LEFT TO TOP)
G01 X19.0; (TOP)
G02 X25.0  Y19.0 R6.0; (CURVE TOP TO RIGHT)
G01        Y0;  (GO ENTRY POINT)
G03 X41.0  Y-16.0 R16.0; (ESCAPE)
G40 G00 Y0;

(termination)
G00 Z100 M09; 
G91 G28 Z0 M05;
G49 G90;
(end of termination)

N5 (make leading poinst)

(preparation)
G91 G28 Z0;
    G28 Y0 G49;
(T02 M06); 
T16 M06;
(end of preparation)

G90 G54 G00 X0 Y0 M08;
G43 Z100.0 H05 S3000 M03;

G82 X12.5 Y0     Z-3.5 R5.0 R60 F600;
    X0.0  Y12.5;
	X-12.5 Y0;
	X0.0  Y-12.5;

G40 G00 Y0;

(termination)
G00 Z100 M09; 
G91 G28 Z0 M05;
G49 G90;
(end of termination)


N6 (make base hole)

(preparation)
G91 G28 Z0;
    G28 Y0 G49;
(T02 M06); 
T17 M06;
(end of preparation)

G90 G54 G00 X0 Y0 M08;
G43 Z100.0 H05 S3000 M03;

G83 X12.5 Y0     Z-21.0 R5.0 R60 F600;
    X0.0  Y12.5;
	X-12.5 Y0;
	X0.0  Y-12.5;

G40 G00 Y0;

(termination)
G00 Z100 M09; 
G91 G28 Z0 M05;
G49 G90;
(end of termination)


N7 (make threads for screw using the rigit feature) 

(preparation)
G91 G28 Z0;
    G28 Y0 G49;
(T02 M06); 
T23 M06;
(end of preparation)

G90 G54 G00 X0 Y0 M08;
G43 Z100.0 H05; (NO S796 M03); 
M29 S796 (same value of G84 F[Feed] value); 
M03 S796; 

G84 X12.5 Y0     Z-17.5 Q6.0 R5.0 (by tapper Rxx) F796;
    X0.0  Y12.5;
	X-12.5 Y0;
	X0.0  Y-12.5;

G40 G00 Y0;

(termination)
G00 Z100 M09; 
G91 G28 Z0 M05;
G49 G90;
(end of termination)
M30; 




