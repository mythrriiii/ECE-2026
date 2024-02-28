% Given DFS coefficients
DFS_coefficients = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];

% Length of the sequence
N = length(DFS_coefficients);

% Calculate the DFT spectrum
DFT_spectrum =  (N * fftshift(ifft(fftshift(DFS_coefficients))));

% Display the results
disp('DFS Coefficients:');
disp(DFS_coefficients);
disp('DFT Spectrum:');
disp(DFT_spectrum);
