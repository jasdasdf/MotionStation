function x = ThDDGOXTWN1STD (imesh,Simesh,Sinodes,Sielements,idata)
  Nnodes    = columns(Simesh.p);
  Nelements = columns(Simesh.t);
  x = idata.Tl./(1+idata.Tl./idata.Tn);
endfunction
