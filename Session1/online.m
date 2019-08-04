I = imread('F:\4.2\DIP-Lab\Session1\peppers_color.jpg');
[row,col,numberofchannel] = size(I);

IgrayImage = zeros(row,col);
for i = 1:row
  for j = 1:col
    r = I(i,j,1);
    g = I(i,j,2);
    b = I(i,j,3);
    IgrayImage(i,j) = r * 0.3 + g * 0.59 + b *0.11;
 endfor
endfor

count = zeros(1,256);
X = [0:255];

for i=1:row
  for j= 1:col
    count(1,IgrayImage(i,j)+1) = count(1,IgrayImage(i,j)+1) +1;
  endfor
endfor
bar(X,count)

