function retour=Fuz(x)
a1=0.1875;
a2=0.3750;
a3=0.7500;

  %  %%%%%%%%%%%%%%%%% NB%%%%%%%%%%%%%%%
  nbp=1;
  nbm=-(x+a2)/(a3-a2);
  nb=max(min(nbp,nbm),0);
  %  %%%%%%%%%%%%%%%%%% NM%%%%%%%%%%%%%%%
  nmp=(x+a3)/(a3-a2);
  nmm=-(x+a1)/(a2-a1);
  nm=max(min(nmp,nmm),0);
  %  %%%%%%%%%%%%%%%%%% NS%%%%%%%%%%%%%%%
  nsp=(x+a2)/(a2-a1);
  nsm=-x/a1;
  ns=max(min(nsp,nsm),0);
  %  %%%%%%%%%%%%%%%%%% Z%%%%%%%%%%%%%%%
  zp=1+x/a1;
  zm=1-x/a1;
  z=max(min(zp,zm),0);
  %  %%%%%%%%%%%%%%%%%% PS%%%%%%%%%%%%%%%
  psp=x/a1;
  psm=(a2-x)/(a2-a1);
  ps=max(min(psp,psm),0);
  %  %%%%%%%%%%%%%%%%%% PM%%%%%%%%%%%%%%%
  pmp=(x-a1)/(a2-a1);
  pmm=(a3-x)/(a3-a2);
  pm=max(min(pmp,pmm),0);
   %  %%%%%%%%%%%%%%%%%% PB%%%%%%%%%%%%%%%
  pbp=(x-a2)/(a3-a2);
  pbm=1;
  pb=max(min(pbp,pbm),0);
  
 retour=[nb nm ns z ps pm pb];
