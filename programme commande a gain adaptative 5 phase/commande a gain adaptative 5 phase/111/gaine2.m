function retour=gaine(alpha,fapder2,faper2)

%les singletons de la variation de commande

gaina2=8;

s1=0.2*gaina2;
s2=0.4*gaina2;
s3=0.6*gaina2;
s4=0.8*gaina2;
s5=1*gaina2;


a=[0 0 0 0 0 0 0]; 
if faper2(1)~=0
   if fapder2(1)~=0
      a(1)=faper2(1)*fapder2(1);
   end
   
   if fapder2(2)~=0
      a(2)=faper2(1)*fapder2(2);
   end
   
   if fapder2(3)~=0
      a(3)=faper2(1)*fapder2(3);
   end
   
   if fapder2(4)~=0
      a(4)=faper2(1)*fapder2(4);
   end
   
   if fapder2(5)~=0
      a(5)=faper2(1)*fapder2(5);
   end
   
   if fapder2(6)~=0
      a(6)=faper2(1)*fapder2(6);
   end
   
   if fapder2(7)~=0
      a(7)=faper2(1)*fapder2(7);
   end
end

numa21=a(1)*s5+a(2)*s5+a(3)*s4+a(4)*s3+a(5)*s2+a(6)*s1+a(7)*s1;
dena21=a(1)+a(2)+a(3)+a(4)+a(5)+a(6)+a(7);

b=[0 0 0 0 0 0 0]; 
if faper2(2)~=0
   if fapder2(1)~=0
      b(1)=faper2(2)*fapder2(1);
   end
   
   if fapder2(2)~=0
      b(2)=faper2(2)*fapder2(2);
   end
   
   if fapder2(3)~=0
      b(3)=faper2(2)*fapder2(3);
   end
   
   if fapder2(4)~=0
      b(4)=faper2(2)*fapder2(4);
   end
   
   if fapder2(5)~=0
      b(5)=faper2(2)*fapder2(5);
   end
   
   if fapder2(6)~=0
      b(6)=faper2(2)*fapder2(6);
   end
   
   if fapder2(7)~=0
      b(7)=faper2(2)*fapder2(7);
   end
end

numa22=b(1)*s5+b(2)*s4+b(3)*s3+b(4)*s2+b(5)*s1+b(6)*s1+b(7)*s1;
dena22=b(1)+b(2)+b(3)+b(4)+b(5)+b(6)+b(7);

c=[0 0 0 0 0 0 0]; 
if faper2(3)~=0
   if fapder2(1)~=0
      c(1)=faper2(3)*fapder2(1);
   end
   
   if fapder2(2)~=0
      c(2)=faper2(3)*fapder2(2);
   end
   
   if fapder2(3)~=0
      c(3)=faper2(3)*fapder2(3);
   end
   
   if fapder2(4)~=0
      c(4)=faper2(3)*fapder2(4);
   end
   
   if fapder2(5)~=0
      c(5)=faper2(3)*fapder2(5);
   end
   
   if fapder2(6)~=0
      c(6)=faper2(3)*fapder2(6);
   end
   
   if fapder2(7)~=0
      c(7)=faper2(3)*fapder2(7);
   end
end

numa23=c(1)*s4+c(2)*s3+c(3)*s2+c(4)*s1+c(5)*s1+c(6)*s1+c(7)*s2;
dena23=c(1)+c(2)+c(3)+c(4)+c(5)+c(6)+c(7);

d=[0 0 0 0 0 0 0]; 
if faper2(4)~=0
   if fapder2(1)~=0
      d(1)=faper2(4)*fapder2(1);
   end
   
   if fapder2(2)~=0
      d(2)=faper2(4)*fapder2(2);
   end
   
   if fapder2(3)~=0
      d(3)=faper2(4)*fapder2(3);
   end
   
   if fapder2(4)~=0
      d(4)=faper2(4)*fapder2(4);
   end
   
   if fapder2(5)~=0
      d(5)=faper2(4)*fapder2(5);
   end
   
   if fapder2(6)~=0
      d(6)=faper2(4)*fapder2(6);
   end
   
   if fapder2(7)~=0
      d(7)=faper2(4)*fapder2(7);
   end
end

numa24=d(1)*s3+d(2)*s2+d(3)*s1+d(4)*s1+d(5)*s1+d(6)*s2+d(7)*s3;
dena24=d(1)+d(2)+d(3)+d(4)+d(5)+d(6)+d(7);
        

e=[0 0 0 0 0 0 0]; 
if faper2(5)~=0
   if fapder2(1)~=0
      e(1)=faper2(5)*fapder2(1);
   end
   
   if fapder2(2)~=0
      e(2)=faper2(5)*fapder2(2);
   end
   
   if fapder2(3)~=0
      e(3)=faper2(5)*fapder2(3);
   end
   
   if fapder2(4)~=0
      e(4)=faper2(5)*fapder2(4);
   end
   
   if fapder2(5)~=0
      e(5)=faper2(5)*fapder2(5);
   end
   
   if fapder2(6)~=0
      e(6)=faper2(5)*fapder2(6);
   end
   
   if fapder2(7)~=0
      e(7)=faper2(5)*fapder2(7);
   end
end

numa25=e(1)*s3+e(2)*s1+e(3)*s1+e(4)*s1+e(5)*s2+e(6)*s3+e(7)*s4;
dena25=e(1)+e(2)+e(3)+e(4)+e(5)+e(6)+e(7);

f=[0 0 0 0 0 0 0]; 
if faper2(6)~=0
   if fapder2(1)~=0
      f(1)=faper2(6)*fapder2(1);
   end
   
   if fapder2(2)~=0
      f(2)=faper2(6)*fapder2(2);
   end
   
   if fapder2(3)~=0
      f(3)=faper2(6)*fapder2(3);
   end
   
   if fapder2(4)~=0
      f(4)=faper2(6)*fapder2(4);
   end
   
   if fapder2(5)~=0
      f(5)=faper2(6)*fapder2(5);
   end
   
   if fapder2(6)~=0
      f(6)=faper2(6)*fapder2(6);
   end
   
   if fapder2(7)~=0
      f(7)=faper2(6)*fapder2(7);
   end
end

numa26=f(1)*s1+f(2)*s1+f(3)*s1+f(4)*s2+f(5)*s3+f(6)*s4+f(7)*s5;
dena26=f(1)+f(2)+f(3)+f(4)+f(5)+f(6)+f(7);

g=[0 0 0 0 0 0 0]; 
if faper2(7)~=0
   if fapder2(1)~=0
      g(1)=faper2(7)*fapder2(1);
   end
   
   if fapder2(2)~=0
      g(2)=faper2(7)*fapder2(2);
   end
   
   if fapder2(3)~=0
      g(3)=faper2(7)*fapder2(3);
   end
   
   if fapder2(4)~=0
      g(4)=faper2(7)*fapder2(4);
   end
   
   if fapder2(5)~=0
      g(5)=faper2(7)*fapder2(5);
   end
   
   if fapder2(6)~=0
      g(6)=faper2(7)*fapder2(6);
   end
   
   if fapder2(7)~=0
      g(7)=faper2(7)*fapder2(7);
   end
end

numa27=g(1)*s1+g(2)*s1+g(3)*s2+g(4)*s3+g(5)*s4+g(6)*s5+g(7)*s5;
dena27=g(1)+g(2)+g(3)+g(4)+g(5)+g(6)+g(7);

alpha2=(numa21+numa22+numa23+numa24+numa25+numa26+numa27)/(dena21+dena22+dena23+dena24+dena25+dena26+dena27);
retour=(alpha2);

