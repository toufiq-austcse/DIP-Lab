S = imread('peppers_color.jpg');
r = S(:,:,1);
g = S(:,:,2);
b = S(:,:,3);

%converting into Gray Scale
SGray = r*0.33 +g*0.59+ b*0.11;

%resizing
modified = SGray([1:8:512],[1:8:512]);

figure;
imshow(S)
figure;
imshow(modified)