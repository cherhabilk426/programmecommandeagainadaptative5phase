function retour=fleee(m);
%T=[-1:.001:1];
%i=1;
%for m=-1:.001:1

   y1=3*m+1;
   y2=3*m+2;
   y3=3*m+3;
   y4=3*m;
   y5=3*m-1;
   y6=3*m-2;
y11=-3*m+1;
y22=-3*m+2;
y33=-3*m+3;
y44=-3*m;
y55=-3*m-1;
y66=-3*m-2;
z1=max(min(y66,1),0);
z2=max(min(y3,y55),0);
z3=max(min(y2,y44),0);
z4=max(min(y1,y11),0);
z5=max(min(y4,y22),0);
z6=max(min(y5,y33),0);
z7=max(min(y6,1),0);

%i=i+1;
%end;

%plot(T,y1,T,y2,T,y3,T,y4,T,y5,T,y6,T,y11,T,y22,T,y33,T,y44,T,y55,T,y66);grid;
%plot(T,z1,T,z2,T,z3,T,z3,T,z4,T,z5,T,z6,T,z7);grid
retour=[z1 z2 z3 z4 z5 z6 z7];