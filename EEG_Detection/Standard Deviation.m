M = randn(AF4,3); % substitute this for the actual data; 3 columns
N = 128; % number of elements in each set for which std is computed

cols = size(A,1);
n_max = ceil(cols/N);
result = repmat(NaN,ceil(cols/N),3); % initialize
for n = 1:n_max
  row_ini = (n-1)*N+1;
  row_fin = min(n*N, cols); % the "min" is in case cols is not a multiple of N
  result(n,:) = std(A(row_ini:row_fin,:));
end