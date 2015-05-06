function izhodna = deCast(p)

%p - matrika kontrolnih točk
%izhodna - matrika tock na krivulji

y=linspace(0,1,100);
n = size(p,1);
m = length(y);
v = zeros(m,3);

for k = 1:n;
X(:,1) = p(k,:,1);
Y(:,1) = p(k,:,2);
Z(:,1) = p(k,:,3);

 for j = 1:m
    for i = 2:n
      X(i:n,i) = (1-y(j))*X(i-1:n-1,i-1) + y(j)*X(i:n,i-1);
      Y(i:n,i) = (1-y(j))*Y(i-1:n-1,i-1) + y(j)*Y(i:n,i-1);
      Z(i:n,i) = (1-y(j))*Z(i-1:n-1,i-1) + y(j)*Z(i:n,i-1);
    end
    v(j,1) = X(n,n);
    v(j,2) = Y(n,n);
    v(j,3) = Z(n,n);
 end
  izhodna(k,:,:) = v;
end

end
