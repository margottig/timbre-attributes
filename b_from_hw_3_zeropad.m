function padded = zeropad(signal, n)
% takes signal, n, returns n-times zero-padded signal
% signal has to be a single row vector
[rows, cols] = size(signal);
pad_rows = (4-1) * rows;
pad_cols = (4-1) * cols;
padded = [signal, zeros(rows, pad_cols); zeros(pad_rows, cols+pad_cols)];
% padded = [signal, zeros(1, (n-1)*(length(signal)))];