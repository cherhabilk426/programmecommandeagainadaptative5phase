%%%%%%%%%%%%%%%%%%%%%%%paramètres de la machine:
clc;clear;
rs=4.85;rr=3.805;ls=0.274;lr=0.274;lm=0.258;
j=0.031;p=2;f=0.008;
tr=0.072;
ts=ls/rs;
rsm=rs*lm*lm*rr/lr*lr;
s=1-lm*lm/(lr*ls);
int1=0;int2=0;int3=0;int4=0;int5=0;
n1=0;n2=0;
nn1=0;nn2=0;
n1est=0;n2est=0;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
alpha=0;
alpha2=0;
%k_regw=10;
%k_regph=5;

h=0.0001;
tf= 5;
%iqsmax=7.5;
%idsmax=7.5;
iqsmax=13;
idsmax=5;
k_est=2;
te=k_est*h;

k=1;
e0=0;
ei=0;
x =[0;0;0;0;0;0];
%xx=[1;0];
phdrestim=0.1;phqrestim=0.1; 
k_est=2;
te=k_est*h;

t=k*h;
idsref=0;
iqsref=0;
phrestim=0.0001;
phrref=1;
while t<=tf;
   
   nref=1500;
   %cr=0;
   if (t>0.5 & t<1) cr=10; else cr=0; end;
   if t<1.5, nref=1500;else nref=-1500; end;

ids=x(3);
iqs=x(4);

wsg=(lm*x(4))/(tr*phrestim);
ws=x(5)+wsg;
thetas=x(6);

if n1est==n2est
   
phdrestim=phdrestim+te*(lm*ids+tr*wsg*phqrestim-phdrestim)/tr;
phqrestim=phqrestim+te*(lm*iqs-tr*wsg*phdrestim-phqrestim)/tr;

phrestim=sqrt(phdrestim*phdrestim+phqrestim*phqrestim);
phrestim0=phrestim;

end;

%xx1=xx;                    kk1=estim(xx1,ids,iqs,wsg);
%xx2=xx1+0.5*h*kk1;         kk2=estim(xx2,ids,iqs,wsg);
%xx3=xx1+0.5*h*kk2;         kk3=estim(xx3,ids,iqs,wsg);
%xx4=xx1+h*kk3;             kk4=estim(xx4,ids,iqs,wsg);
%xx=xx1+h*(kk1+2*kk2+2*kk3+kk4)/6;
%phdrestim=xx(1);
%phqrestim=xx(2);
%phrestim=sqrt(phdrestim*phdrestim+phqrestim*phqrestim);

%iqsref=(lr*cemr)/(p*lm*phrestim);

iasref=sqrt(2/5)*(idsref*cos(thetas)-iqsref*sin(thetas));
ibsref=sqrt(2/5)*(idsref*cos(thetas+2*pi/5)-iqsref*sin(thetas+2*pi/5));
icsref=sqrt(2/5)*(idsref*cos(thetas+4*pi/5)-iqsref*sin(thetas+4*pi/5));
ifsref=sqrt(2/5)*(idsref*cos(thetas+6*pi/5)-iqsref*sin(thetas+6*pi/5));
iesref=sqrt(2/5)*(idsref*cos(thetas+8*pi/5)-iqsref*sin(thetas+8*pi/5));


ias=sqrt(2/5)*(x(3)*cos(thetas)-x(4)*sin(thetas));
ibs=sqrt(2/5)*(x(3)*cos(thetas+2*pi/5)-x(4)*sin(thetas+2*pi/5));
ics=sqrt(2/5)*(x(3)*cos(thetas+4*pi/5)-x(4)*sin(thetas+4*pi/5));
ifs=sqrt(2/5)*(x(3)*cos(thetas+6*pi/5)-x(4)*sin(thetas+6*pi/5));
ies=sqrt(2/5)*(x(3)*cos(thetas+8*pi/5)-x(4)*sin(thetas+8*pi/5));


tensionref=ondhyst(ias,ibs,ics,ifs,ies,   iasref,ibsref,icsref,ifsref,iesref,   int1,int2,int3,int4,int5);
vasref=tensionref(1);
vbsref=tensionref(2);
vcsref=tensionref(3);
vfsref=tensionref(4);
vesref=tensionref(5);

vds= sqrt(2/5)*(vasref*cos(thetas)+vbsref*cos(thetas+2*pi/5)+vcsref*cos(thetas+4*pi/5) +vfsref*cos(thetas+6*pi/5)+vesref*cos(thetas+8*pi/5));
vqs=-sqrt(2/5)*(vasref*sin(thetas)+vbsref*sin(thetas+2*pi/5)+vcsref*sin(thetas+4*pi/5) +vfsref*sin(thetas+6*pi/5)+vesref*sin(thetas+8*pi/5));



x1=x;                    k1=derives(x1,vds,vqs,ws,cr);
x2=x1+0.5*h*k1;          k2=derives(x2,vds,vqs,ws,cr);
x3=x1+0.5*h*k2;          k3=derives(x3,vds,vqs,ws,cr); 
x4=x1+h*k3;              k4=derives(x4,vds,vqs,ws,cr);
x=x1+h*(k1+2*k2+2*k3+k4)/6;

phds(k)=x(1);
phqs(k)=x(2);
ids(k)=x(3);
iqs(k)=x(4);
wm(k)=x(5);
thetas=x(6);

cem(k)=p*(iqs(k)*phds(k)-ids(k)*phqs(k));
phdr(k)=lr*phds(k)/lm-s*ls*lr*ids(k)/lm;
phqr(k)=lr*phqs(k)/lm-s*ls*lr*iqs(k)/lm;
phr(k)=sqrt(phdr(k)*phdr(k)+phqr(k)*phqr(k));
iass(k)=sqrt(2/3)*(ids(k)*cos(thetas)+iqs(k)*sin(thetas));
n(k)=30*wm(k)/(p*pi);

%**************régulation floue de la vitesse****************
if n1==n2
ew=(nref-n(k))/abs(nref);
ve=(ew-e0)*2.75;

%faper2=fleee(ew);
%fapder2=fleee(ve);
%faper2=floue(ew);   %LA FORME DE CLOCHE
%fapder2=floue(ve);

faper=fuz(ew);
fapder=fuz(ve);

e0=ew;
end;

alpha=gaine( alpha,fapder,faper,1);

if abs(iqsref)> iqsmax,
   iqsref=iqsmax*sign(iqsref);
else
  iqsref=flo(iqsref,faper,fapder,alpha,20);

 end;
%**************réulation floue du flux***********************

 if nn1==nn2
ephr=(phrref-phrestim);
veph=(ephr-ei)*18;

%faper2=fleee(ephr);
%fapder2=fleee(veph);
%faper2=floue(ephr);   %LA FORME DE CLOCHE
%fapder2=floue(veph);

faper2=fuz(ephr);
fapder2=fuz(veph);
ei=ephr;
end
alpha2=gaine( alpha2,fapder2,faper2,8);
if abs(idsref)> idsmax,
   idsref=idsmax*sign(idsref);
else
  idsref=flo(idsref,faper2,fapder2,alpha2,8);
end;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
phdrestim0(k)=phdrestim;
phqrestim0(k)=phqrestim;

i2(k)=iqsref;
alph(k)=alpha;
alph2(k)=alpha2;
i(k)=idsref;
%n(k)=n;
%nref(k)=nref;
tk(k)=t;home, t
k=k+1; t=t+h;
n1=k/20;
n2=fix(k/20);
nn1=k/2;
nn2=fix(k/2);
%n1=k/k_regw;
%n2=fix(n1);
%nn1=k/k_regph;
%nn2=fix(nn1);
end
figure(1)
subplot(3,2,1),plot(tk,n),grid, ylabel('n(tr/m)'); 
%axis([0 tf 0 1100])
axis([0 tf -1800 1800])
subplot(3,2,2),plot(tk,phdr,tk,phdrestim0),grid, ylabel('phdr(wb)'); 
axis([0 tf 0 1.2])
subplot(3,2,3),plot(tk,cem),grid, ylabel('cem(Nm)'); 
subplot(3,2,4),plot(tk,phqr,tk,phqrestim0),grid, ylabel('phqr(wb)'); 
subplot(3,2,5),plot(tk,iass),grid,xlabel('t(s)'); ylabel('ias(A)'); 
subplot(3,2,6),plot(tk,i2,tk,i),grid,xlabel('t(s)'); ylabel('idsref et iqsref(A)');

%figure(1)
%subplot(3,2,1),plot(tk,n),grid,xlabel('t(s)'); ylabel('n'); 
%subplot(3,2,2),plot(tk,phdr),grid,xlabel('t(s)'); ylabel('phdr'); 
%subplot(3,2,3),plot(tk,cem),grid,xlabel('t(s)'); ylabel('cem'); 
%subplot(3,2,4),plot(tk,phqr),grid,xlabel('t(s)'); ylabel('phqr'); 
%subplot(3,2,5),plot(tk,iass),grid,xlabel('t(s)'); ylabel('ias'); 
%subplot(3,2,6),plot(tk,i),grid,xlabel('t(s)'); ylabel('iqsref');
pause
figure(2)
subplot(2,1,1),plot(tk,alph),grid,xlabel('t(s)'); ylabel('Gain1');
subplot(2,1,2),plot(tk,alph2),grid,xlabel('t(s)'); ylabel('Gain2');

