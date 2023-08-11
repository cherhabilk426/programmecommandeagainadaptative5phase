function retour=flo2(idsref,fapder2,faper2,alpha2)
%les singletons de la variation de commande
gain2=8;
s1=-1*gain2;
s2=-.66*gain2;
s3=-.33*gain2;
s4=0;
s5=.33*gain2;
s6=.66*gain2;
s7=1*gain2;


a2=[0 0 0 0 0 0 0]; 
if faper2(1)~=0
   if fapder2(1)~=0
      a2(1)=faper2(1)*fapder2(1);
   end
   
   if fapder2(2)~=0
      a2(2)=faper2(1)*fapder2(2);
   end
   
   if fapder2(3)~=0
      a2(3)=faper2(1)*fapder2(3);
   end
   
   if fapder2(4)~=0
      a2(4)=faper2(1)*fapder2(4);
   end
   
   if fapder2(5)~=0
      a2(5)=faper2(1)*fapder2(5);
   end
   
   if fapder2(6)~=0
      a2(6)=faper2(1)*fapder2(6);
   end
   
   if fapder2(7)~=0
      a2(7)=faper2(1)*fapder2(7);
   end
end
num21=a2(1)*s1+a2(2)*s1+a2(3)*s1+a2(4)*s1+a2(5)*s2+a2(6)*s3+a2(7)*s4;
den21=a2(1)+a2(2)+a2(3)+a2(4)+a2(5)+a2(6)+a2(7);

b2=[0 0 0 0 0 0 0]; 
if faper2(2)~=0
   if fapder2(1)~=0
      b2(1)=faper2(2)*fapder2(1);
   end
   
   if fapder2(2)~=0
      b2(2)=faper2(2)*fapder2(2);
   end
   
   if fapder2(3)~=0
      b2(3)=faper2(2)*fapder2(3);
   end
   
   if fapder2(4)~=0
      b2(4)=faper2(2)*fapder2(4);
   end
   
   if fapder2(5)~=0
      b2(5)=faper2(2)*fapder2(5);
   end
   
   if fapder2(6)~=0
      b2(6)=faper2(2)*fapder2(6);
   end
   
   if fapder2(7)~=0
      b2(7)=faper2(2)*fapder2(7);
   end
end
num22=b2(1)*s1+b2(2)*s1+b2(3)*s1+b2(4)*s2+b2(5)*s3+b2(6)*s4+b2(7)*s5;
den22=b2(1)+b2(2)+b2(3)+b2(4)+b2(5)+b2(6)+b2(7);

c2=[0 0 0 0 0 0 0]; 
if faper2(3)~=0
   if fapder2(1)~=0
      c2(1)=faper2(3)*fapder2(1);
   end
   
   if fapder2(2)~=0
      c2(2)=faper2(3)*fapder2(2);
   end
   
   if fapder2(3)~=0
      c2(3)=faper2(3)*fapder2(3);
   end
   
   if fapder2(4)~=0
      c2(4)=faper2(3)*fapder2(4);
   end
   
   if fapder2(5)~=0
      c2(5)=faper2(3)*fapder2(5);
   end
   
   if fapder2(6)~=0
      c2(6)=faper2(3)*fapder2(6);
   end
   
   if fapder2(7)~=0
      c2(7)=faper2(3)*fapder2(7);
   end
end
num23=c2(1)*s1+c2(2)*s1+c2(3)*s2+c2(4)*s3+c2(5)*s4+c2(6)*s5+c2(7)*s6;
den23=c2(1)+c2(2)+c2(3)+c2(4)+c2(5)+c2(6)+c2(7);

d2=[0 0 0 0 0 0 0]; 
if faper2(4)~=0
   if fapder2(1)~=0
      d2(1)=faper2(4)*fapder2(1);
   end
   
   if fapder2(2)~=0
      d2(2)=faper2(4)*fapder2(2);
   end
   
   if fapder2(3)~=0
      d2(3)=faper2(4)*fapder2(3);
   end
   
   if fapder2(4)~=0
      d2(4)=faper2(4)*fapder2(4);
   end
   
   if fapder2(5)~=0
      d2(5)=faper2(4)*fapder2(5);
   end
   
   if fapder2(6)~=0
      d2(6)=faper2(4)*fapder2(6);
   end
   
   if fapder2(7)~=0
      d2(7)=faper2(4)*fapder2(7);
   end
end
num24=d2(1)*s1+d2(2)*s2+d2(3)*s3+d2(4)*s4+d2(5)*s5+d2(6)*s6+d2(7)*s7;
den24=d2(1)+d2(2)+d2(3)+d2(4)+d2(5)+d2(6)+d2(7);
        

e2=[0 0 0 0 0 0 0]; 
if faper2(5)~=0
   if fapder2(1)~=0
      e2(1)=faper2(5)*fapder2(1);
   end
   
   if fapder2(2)~=0
      e2(2)=faper2(5)*fapder2(2);
   end
   
   if fapder2(3)~=0
      e2(3)=faper2(5)*fapder2(3);
   end
   
   if fapder2(4)~=0
      e2(4)=faper2(5)*fapder2(4);
   end
   
   if fapder2(5)~=0
      e2(5)=faper2(5)*fapder2(5);
   end
   
   if fapder2(6)~=0
      e2(6)=faper2(5)*fapder2(6);
   end
   
   if fapder2(7)~=0
      e2(7)=faper2(5)*fapder2(7);
   end
end
num25=e2(1)*s2+e2(2)*s3+e2(3)*s4+e2(4)*s5+e2(5)*s6+e2(6)*s7+e2(7)*s7;
den25=e2(1)+e2(2)+e2(3)+e2(4)+e2(5)+e2(6)+e2(7);

f2=[0 0 0 0 0 0 0]; 
if faper2(6)~=0
   if fapder2(1)~=0
      f2(1)=faper2(6)*fapder2(1);
   end
   
   if fapder2(2)~=0
      f2(2)=faper2(6)*fapder2(2);
   end
   
   if fapder2(3)~=0
      f2(3)=faper2(6)*fapder2(3);
   end
   
   if fapder2(4)~=0
      f2(4)=faper2(6)*fapder2(4);
   end
   
   if fapder2(5)~=0
      f2(5)=faper2(6)*fapder2(5);
   end
   
   if fapder2(6)~=0
      f2(6)=faper2(6)*fapder2(6);
   end
   
   if fapder2(7)~=0
      f2(7)=faper2(6)*fapder2(7);
   end
end
num26=f2(1)*s3+f2(2)*s4+f2(3)*s5+f2(4)*s6+f2(5)*s7+f2(6)*s7+f2(7)*s7;
den26=f2(1)+f2(2)+f2(3)+f2(4)+f2(5)+f2(6)+f2(7);

g2=[0 0 0 0 0 0 0]; 
if faper2(7)~=0
   if fapder2(1)~=0
      g2(1)=faper2(7)*fapder2(1);
   end
   
   if fapder2(2)~=0
      g2(2)=faper2(7)*fapder2(2);
   end
   
   if fapder2(3)~=0
      g2(3)=faper2(7)*fapder2(3);
   end
   
   if fapder2(4)~=0
      g2(4)=faper2(7)*fapder2(4);
   end
   
   if fapder2(5)~=0
      g2(5)=faper2(7)*fapder2(5);
   end
   
   if fapder2(6)~=0
      g2(6)=faper2(7)*fapder2(6);
   end
   
   if fapder2(7)~=0
      g2(7)=faper2(7)*fapder2(7);
   end
end
num27=g2(1)*s4+g2(2)*s5+g2(3)*s6+g2(4)*s7+g2(5)*s7+g2(6)*s7+g2(7)*s7;
den27=g2(1)+g2(2)+g2(3)+g2(4)+g2(5)+g2(6)+g2(7);

id=(num21+num22+num23+num24+num25+num26+num27)/(den21+den22+den23+den24+den25+den26+den27);
idsref=(idsref+alpha2*id);
retour=[idsref];

