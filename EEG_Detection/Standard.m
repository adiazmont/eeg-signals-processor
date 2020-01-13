
E = 300; % number of elements in each set for which std is computed
F = E/2;
cols = size(AF4);


for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  SD(n,1) = std(AF4(row_ini:row_fin));
end
cols = size(F7);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  SD(n,2) = std(F7(row_ini:row_fin));
end

cols = size(F3);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  SD(n,3) = std(F3(row_ini:row_fin));
end

cols = size(FC5);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  SD(n,4) = std(FC5(row_ini:row_fin));
end

cols = size(T7);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  SD(n,5) = std(T7(row_ini:row_fin));
end

cols = size(P7);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  SD(n,6) = std(P7(row_ini:row_fin));
end


cols = size(O1);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  SD(n,7) = std(O1(row_ini:row_fin));
end

cols = size(O2);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  SD(n,8) = std(O2(row_ini:row_fin));
end

cols = size(P8);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  SD(n,9) = std(P8(row_ini:row_fin));
end

cols = size(T8);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  SD(n,10) = std(T8(row_ini:row_fin));
end

cols = size(FC6);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  SD(n,11) = std(FC6(row_ini:row_fin));
end

cols = size(F4);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  SD(n,12) = std(F4(row_ini:row_fin));
end

cols = size(F8);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  SD(n,13) = std(F8(row_ini:row_fin));
end

cols = size(AF4);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  SD(n,14) = std(AF4(row_ini:row_fin));
end

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  if std(MARKER(row_ini:row_fin)) > 0
    SD(n,15) = 1;
  else 
    SD(n,15) = 0;
  end
end



%plot(SD,'DisplayName','SD')
%
%N = 128; % number of elements in each set for which std is computed

%cols = size(AF4,1);
%for n = 1:ceil(cols/N)
 % row_ini = (n-1)*N+1;
 % row_fin = min(n*N, cols); % the "min" is in case cols is not a multiple of N
  %AF4_SD(n) = std(AF4(row_ini:row_fin,:))
%end