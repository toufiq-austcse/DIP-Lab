I = imread('pollen.jpg');
[row,col,n] = size(I);
%minimum
B = min(min(I));
%maximum
A = max(max(I));
%difference
D = A -B;
M = 2^8-1;

%calculating R
R = B + (I.*(M/D) -(M/D)*B);

%displaying Image
figure;
imshow(I);

figure;
imshow(R);

%histogram of I
counts = zeros(1,256);
values = [1:256];

for i = 1:row
    for j = 1:col
        counts(1,I(i,j)+1) =  counts(1,I(i,j)+1) +1;
    end
end

figure;
bar(values,counts);

%histogram of R
countsR = zeros(1,256);
valuesR = [1:256];

for i = 1:row
    for j = 1:col
        countsR(1,R(i,j)+1) =  countsR(1,R(i,j)+1) +1;
    end
end
figure;
bar(valuesR,countsR);

