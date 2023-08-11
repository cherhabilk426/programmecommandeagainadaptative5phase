%%%%%%%%%%%%%%%%%%%%paramètres de la machine:
clc;clear;
rs=4.85;rr=3.805;ls=0.274;lr=0.274;lm=0.258;
j=0.031;p=2;f=0.008;
tr=0.072;
ts=ls/rs;
rsm=rs*lm*lm*rr/lr*lr;
s=1-lm*lm/(lr*ls);
int1=0;int2=0;int3=0;
%*********************************
n1=0;n2=0;
alpha=0;

h=0.0001;
tf=2;
cemmax=25;
k=1;
e0=0;
x=[0;0;0;0;0;0]; 
t=k*h;
cemr=0;
while t<=tf;
   nref=1000;
   %cr=0;
   if (t>.8 & t<1.4) cr=10; else cr=0; end;
   %if t<1, nref=1000;else nref=-1000; end;

phrref=1;
idsref=phrref/lm;
iqsref=(lr*cemr)/(p*lm*phrref);
wsg=(lm*x(4))/(tr*phrref);
ws=x(5)+wsg;
thetas=x(6);

iasref=sqrt(2/3)*(idsref*cos(thetas)-iqsref*sin(thetas));
ibsref=sqrt(2/3)*(idsref*cos(thetas-2*pi/3)-iqsref*sin(thetas-2*pi/3));
icsref=sqrt(2/3)*(idsref*cos(thetas+2*pi/3)-iqsref*sin(thetas+2*pi/3));


ias=sqrt(2/3)*(x(3)*cos(thetas)-x(4)*sin(thetas));
ibs=sqrt(2/3)*(x(3)*cos(thetas-2*pi/3)-x(4)*sin(thetas-2*pi/3));
ics=sqrt(2/3)*(x(3)*cos(thetas+2*pi/3)-x(4)*sin(thetas+2*pi/3));


tensionref=ondhyst(ias,ibs,ics,iasref,ibsref,icsref,int1,int2,int3);

vasref=tensionref(1);
vbsref=tensionref(2);
vcsref=tensionref(3);

vds1=sqrt(2/3)*(vasref*cos(thetas)+vbsref*cos(thetas-2*pi/3));
vds=vds1+sqrt(2/3)*vcsref*cos(thetas+2*pi/3);
vqs1=-sqrt(2/3)*(vasref*sin(thetas)+vbsref*sin(thetas-2*pi/3));
vqs=vqs1-sqrt(2/3)*vcsref*sin(thetas+2*pi/3);


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

%**************régulation floue de la vitesse ****************
if n1==n2
ew=(nref-n(k))/abs(nref);
ve=(ew-e0)*5;

%faper=fleee(ew);
%fapder=fleee(ve);
%faper=floue(ew);   %LA FORME DE CLOCHE
%fapder=floue(ve);

faper=fuz(ew);
fapder=fuz(ve);
e0=ew;
end;
alpha=gaine( alpha,fapder,faper);
if abs(cemr)> cemmax,
   cemr=cemmax*sign(cemr);
else
  cemr=flo(cemr,faper,fapder,alpha);

 end;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
cc(k)=cemr;
idss(k)=idsref;
iqss(k)=iqsref;
alph(k)=alpha;
i(k)=iqsref;

tk(k)=t;home, t
k=k+1; t=t+h;
n1=k/20;
n2=fix(k/20);
end

figure(1)
subplot(3,2,1),plot(tk,n),grid,xlabel('t(s)'); ylabel('n'); 
subplot(3,2,2),plot(tk,phdr),grid,xlabel('t(s)'); ylabel('phdr'); 
subplot(3,2,3),plot(tk,cem),grid,xlabel('t(s)'); ylabel('cem'); 
subplot(3,2,4),plot(tk,phqr),grid,xlabel('t(s)'); ylabel('phqr'); 
subplot(3,2,5),plot(tk,iass),grid,xlabel('t(s)'); ylabel('ias'); 
subplot(3,2,6),plot(tk,i),grid,xlabel('t(s)'); ylabel('iqsref');
pause
figure(2)
plot(tk,alph)

