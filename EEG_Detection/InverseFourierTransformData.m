% Inverse Fast Fourier Transformation for each 300 seconds (intervals in the signal channels)
% Once the .csv file is imported in order to get the signal channels from
% AF3 to AF4, we iterate through all the rows (~10,000). We select groups
% of 300 hundred rows and apply a Fast Fourier Transform. Then we select
% the next group, and so on. We save the collected data in an array named
% fftArray.
% Authors: Alan D?az.
% Affiliation: San Diego State University.
% Fall term 2015.

% [rows, columns] = size(fftArray);
% 
% for columnsToRead = 1:columns
%     for rowsToRead = 1:rows
%         elementToChange = fftArray(rowsToRead,columnsToRead);
%         ifftArray(rowsToRead,columnsToRead) = ifft(elementToChange);
%     end
% end

E = 300; % number of elements in each set for which std is computed
F = E/2;
cols = size(AF4);


for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  rowsToRead = AF4(row_ini:row_fin);
  ifftMatrix = ifft(rowsToRead);
  ifftArray(n,1) = ifftMatrix(1);
end
cols = size(F7);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  rowsToRead = F7(row_ini:row_fin);
  ifftMatrix = ifft(rowsToRead);
  ifftArray(n,2) = ifftMatrix(1);
end

cols = size(F3);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  rowsToRead = F3(row_ini:row_fin);
  ifftMatrix = ifft(rowsToRead);
  ifftArray(n,3) = ifftMatrix(1);
end

cols = size(FC5);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  rowsToRead = FC5(row_ini:row_fin);
  ifftMatrix = ifft(rowsToRead);
  ifftArray(n,4) = ifftMatrix(1);
end

cols = size(T7);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  rowsToRead = T7(row_ini:row_fin);
  ifftMatrix = ifft(rowsToRead);
  ifftArray(n,5) = ifftMatrix(1);
end

cols = size(P7);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  rowsToRead = P7(row_ini:row_fin);
  ifftMatrix = ifft(rowsToRead);
  ifftArray(n,6) = ifftMatrix(1);
end


cols = size(O1);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  rowsToRead = O1(row_ini:row_fin);
  ifftMatrix = ifft(rowsToRead);
  ifftArray(n,7) = ifftMatrix(1);
end

cols = size(O2);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  rowsToRead = O2(row_ini:row_fin);
  ifftMatrix = ifft(rowsToRead);
  ifftArray(n,8) = ifftMatrix(1);
end

cols = size(P8);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  rowsToRead = P8(row_ini:row_fin);
  ifftMatrix = ifft(rowsToRead);
  ifftArray(n,9) = ifftMatrix(1);
end

cols = size(T8);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  rowsToRead = T8(row_ini:row_fin);
  ifftMatrix = ifft(rowsToRead);
  ifftArray(n,10) = ifftMatrix(1);
end

cols = size(FC6);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  rowsToRead = FC6(row_ini:row_fin);
  ifftMatrix = ifft(rowsToRead);
  ifftArray(n,11) = ifftMatrix(1);
end

cols = size(F4);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  rowsToRead = F4(row_ini:row_fin);
  ifftMatrix = ifft(rowsToRead);
  ifftArray(n,12) = ifftMatrix(1);
end

cols = size(F8);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  rowsToRead = F8(row_ini:row_fin);
  ifftMatrix = ifft(rowsToRead);
  ifftArray(n,13) = ifftMatrix(1);
end

cols = size(AF4);

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  rowsToRead = AF4(row_ini:row_fin);
  ifftMatrix = ifft(rowsToRead);
  ifftArray(n,14) = ifftMatrix(1);
end

for n = 1:ceil(cols/E)
  row_ini = (n-1)*E+1;
  row_fin = min(n*E, cols); % the "min" is in case columns are not a multiple of N
  rowsToRead = MARKER(row_ini:row_fin);
  ifftMatrix = ifft(rowsToRead);
  if ifftMatrix(1) > 0
    ifftArray(n,15) = 1;
  else 
    ifftArray(n,15) = 0;
  end
end
