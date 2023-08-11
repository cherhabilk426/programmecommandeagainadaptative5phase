function retour=estim(xx,ids,iqs,wsg);
rs=4.85;rr=3.805;ls=0.274;lr=0.274;lm=0.258;
j=0.031;p=2;f=0.008;

tr=lr/rr;
ts=ls/rs;
s=1-lm*lm/(lr*ls);
phdrestim=xx(1);
phqrestim=xx(2);

dphdrestim=(lm*ids+tr*wsg*phqrestim-phdrestim)/tr;
dphqrestim=(lm*iqs-tr*wsg*phdrestim-phqrestim)/tr;
retour=[dphdrestim;dphqrestim];


