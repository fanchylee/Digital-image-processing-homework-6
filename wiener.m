function f=wiener(G,H,K)
sizeG=size(G);
sizeH=size(H);
if sizeG ~= sizeH
	f=NaN;
	return ;
else
	F=(1./H).*(H.^2./(H.^2+K)).*G;
	f=uint8(ifft2(F));
end
g=uint8(ifft2(G));
subplot(121);
imshow(g);
subplot(122);
imshow(f);
return ;
