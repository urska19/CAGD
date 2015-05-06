function run(pl,v)

%pl - ploskve
%v - vozlisca

ploskve = load(pl);
tocke = load(v);

[m n] = size(ploskve); 
for i = 1:m	
  for j = 1:n
    if(j <= 4)
      b(1,j,:) = tocke(ploskve(i,j),:);
    elseif(j > 4 && j<=8)
      b(2,j-4,:) = tocke(ploskve(i,j),:);
    elseif(j > 8 && j<=12)
      b(3,j-8,:) = tocke(ploskve(i,j),:);
    elseif(j > 12 && j<=16)
    b(4,j-12,:) = tocke(ploskve(i,j),:);
  end
end

hold on;
B1 = deCast2(deCast(b));
surface(B1(:,:,1),B1(:,:,2),B1(:,:,3));
shading interp;
%colormap(cooper);
end
axis equal;
end
