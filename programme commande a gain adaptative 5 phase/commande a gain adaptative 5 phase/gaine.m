function retour=gaine(alpha,fapder,faper,gaina)

%les singletons de la variation de commande

%gaina=1;

s1=0.2*gaina;
s2=0.4*gaina;
s3=0.6*gaina;
s4=0.8*gaina;
s5=1*gaina;


a=[0 0 0 0 0 0 0]; 
if faper(1)~=0
   if fapder(1)~=0
      a(1)=faper(1)*fapder(1);
   end
   
   if fapder(2)~=0
      a(2)=faper(1)*fapder(2);
   end
   
   if fapder(3)~=0
      a(3)=faper(1)*fapder(3);
   end
   
   if fapder(4)~=0
      a(4)=faper(1)*fapder(4);
   end
   
   if fapder(5)~=0
      a(5)=faper(1)*fapder(5);
   end
   
   if fapder(6)~=0
      a(6)=faper(1)*fapder(6);
   end
   
   if fapder(7)~=0
      a(7)=faper(1)*fapder(7);
   end
end

numa1=a(1)*s5+a(2)*s5+a(3)*s4+a(4)*s3+a(5)*s2+a(6)*s1+a(7)*s1;
dena1=a(1)+a(2)+a(3)+a(4)+a(5)+a(6)+a(7);

b=[0 0 0 0 0 0 0]; 
if faper(2)~=0
   if fapder(1)~=0
      b(1)=faper(2)*fapder(1);
   end
   
   if fapder(2)~=0
      b(2)=faper(2)*fapder(2);
   end
   
   if fapder(3)~=0
      b(3)=faper(2)*fapder(3);
   end
   
   if fapder(4)~=0
      b(4)=faper(2)*fapder(4);
   end
   
   if fapder(5)~=0
      b(5)=faper(2)*fapder(5);
   end
   
   if fapder(6)~=0
      b(6)=faper(2)*fapder(6);
   end
   
   if fapder(7)~=0
      b(7)=faper(2)*fapder(7);
   end
end

numa2=b(1)*s5+b(2)*s4+b(3)*s3+b(4)*s2+b(5)*s1+b(6)*s1+b(7)*s1;
dena2=b(1)+b(2)+b(3)+b(4)+b(5)+b(6)+b(7);

c=[0 0 0 0 0 0 0]; 
if faper(3)~=0
   if fapder(1)~=0
      c(1)=faper(3)*fapder(1);
   end
   
   if fapder(2)~=0
      c(2)=faper(3)*fapder(2);
   end
   
   if fapder(3)~=0
      c(3)=faper(3)*fapder(3);
   end
   
   if fapder(4)~=0
      c(4)=faper(3)*fapder(4);
   end
   
   if fapder(5)~=0
      c(5)=faper(3)*fapder(5);
   end
   
   if fapder(6)~=0
      c(6)=faper(3)*fapder(6);
   end
   
   if fapder(7)~=0
      c(7)=faper(3)*fapder(7);
   end
end

numa3=c(1)*s4+c(2)*s3+c(3)*s2+c(4)*s1+c(5)*s1+c(6)*s1+c(7)*s2;
dena3=c(1)+c(2)+c(3)+c(4)+c(5)+c(6)+c(7);

d=[0 0 0 0 0 0 0]; 
if faper(4)~=0
   if fapder(1)~=0
      d(1)=faper(4)*fapder(1);
   end
   
   if fapder(2)~=0
      d(2)=faper(4)*fapder(2);
   end
   
   if fapder(3)~=0
      d(3)=faper(4)*fapder(3);
   end
   
   if fapder(4)~=0
      d(4)=faper(4)*fapder(4);
   end
   
   if fapder(5)~=0
      d(5)=faper(4)*fapder(5);
   end
   
   if fapder(6)~=0
      d(6)=faper(4)*fapder(6);
   end
   
   if fapder(7)~=0
      d(7)=faper(4)*fapder(7);
   end
end

numa4=d(1)*s3+d(2)*s2+d(3)*s1+d(4)*s1+d(5)*s1+d(6)*s2+d(7)*s3;
dena4=d(1)+d(2)+d(3)+d(4)+d(5)+d(6)+d(7);
        

e=[0 0 0 0 0 0 0]; 
if faper(5)~=0
   if fapder(1)~=0
      e(1)=faper(5)*fapder(1);
   end
   
   if fapder(2)~=0
      e(2)=faper(5)*fapder(2);
   end
   
   if fapder(3)~=0
      e(3)=faper(5)*fapder(3);
   end
   
   if fapder(4)~=0
      e(4)=faper(5)*fapder(4);
   end
   
   if fapder(5)~=0
      e(5)=faper(5)*fapder(5);
   end
   
   if fapder(6)~=0
      e(6)=faper(5)*fapder(6);
   end
   
   if fapder(7)~=0
      e(7)=faper(5)*fapder(7);
   end
end

numa5=e(1)*s3+e(2)*s1+e(3)*s1+e(4)*s1+e(5)*s2+e(6)*s3+e(7)*s4;
dena5=e(1)+e(2)+e(3)+e(4)+e(5)+e(6)+e(7);

f=[0 0 0 0 0 0 0]; 
if faper(6)~=0
   if fapder(1)~=0
      f(1)=faper(6)*fapder(1);
   end
   
   if fapder(2)~=0
      f(2)=faper(6)*fapder(2);
   end
   
   if fapder(3)~=0
      f(3)=faper(6)*fapder(3);
   end
   
   if fapder(4)~=0
      f(4)=faper(6)*fapder(4);
   end
   
   if fapder(5)~=0
      f(5)=faper(6)*fapder(5);
   end
   
   if fapder(6)~=0
      f(6)=faper(6)*fapder(6);
   end
   
   if fapder(7)~=0
      f(7)=faper(6)*fapder(7);
   end
end

numa6=f(1)*s1+f(2)*s1+f(3)*s1+f(4)*s2+f(5)*s3+f(6)*s4+f(7)*s5;
dena6=f(1)+f(2)+f(3)+f(4)+f(5)+f(6)+f(7);

g=[0 0 0 0 0 0 0]; 
if faper(7)~=0
   if fapder(1)~=0
      g(1)=faper(7)*fapder(1);
   end
   
   if fapder(2)~=0
      g(2)=faper(7)*fapder(2);
   end
   
   if fapder(3)~=0
      g(3)=faper(7)*fapder(3);
   end
   
   if fapder(4)~=0
      g(4)=faper(7)*fapder(4);
   end
   
   if fapder(5)~=0
      g(5)=faper(7)*fapder(5);
   end
   
   if fapder(6)~=0
      g(6)=faper(7)*fapder(6);
   end
   
   if fapder(7)~=0
      g(7)=faper(7)*fapder(7);
   end
end

numa7=g(1)*s1+g(2)*s1+g(3)*s2+g(4)*s3+g(5)*s4+g(6)*s5+g(7)*s5;
dena7=g(1)+g(2)+g(3)+g(4)+g(5)+g(6)+g(7);

alpha=(numa1+numa2+numa3+numa4+numa5+numa6+numa7)/(dena1+dena2+dena3+dena4+dena5+dena6+dena7);
retour=(alpha);

