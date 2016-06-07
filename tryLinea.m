%     syms x1x x1y x1t x2x x2y x2t zx zy zt real;
% 
%     x1s = [x1x;x1y;x1t];
%     x2s = [x2x;x2y;x2t];
%     zs = [zx;zy;zt];
%     es = t2v(inv(v2t(zs))*(inv(v2t(x1s))*v2t(x2s)));
%     As = [diff(es,x1x),diff(es,x1y),diff(es,x1t)];
% 
%     Bs = [diff(es,x2x),diff(es,x2y),diff(es,x2t)];
%     
      syms xx xy xt lx ly zx zy real;
  xs = [xx; xy; xt];
  ls = [lx; ly];
  zs = [zx;zy];
  Ts = v2t(xs);
  es = Ts(1:2,1:2)'*(ls-xs(1:2)) - zs;
  As = [diff(es,xx),diff(es,xy), diff(es,xt)];
   
  
  Bs = [diff(es,lx),diff(es,ly)];
  
   As = simplify(As)
  Bs = simplify(Bs)
