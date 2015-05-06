function izhodna = deCast2(p)

%p - kontrolne tocke dobljenev drugem koraku postopka opisanega v porocilu
%izhodna - tocke na ploskvi

y=linspace(0,1,100);
n = size(p,1);
m = length(y);
val = zeros(m,3);
n2 = size(p,2);

for k = 1:n2
X(:,1) = p(:,k,1);
Y(:,1) = p(:,k,2);
Z(:,1) = p(:,k,3);
 for j = 1:m
    for i = 2:n
      X(i:n,i) = (1-y(j))*X(i-1:n-1,i-1) + y(j)*X(i:n,i-1);
      Y(i:n,i) = (1-y(j))*Y(i-1:n-1,i-1) + y(j)*Y(i:n,i-1);
      Z(i:n,i) = (1-y(j))*Z(i-1:n-1,i-1) + y(j)*Z(i:n,i-1);
    end
    val(j,1) = X(n,n);
    val(j,2) = Y(n,n);
    val(j,3) = Z(n,n);
 end
  izhodna(k,:,:) = val;
end

end
