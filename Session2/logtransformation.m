R =imread('https://scontent.fdac5-1.fna.fbcdn.net/v/t1.0-9/65619005_2475230252539555_4619126332008169472_n.jpg?_nc_cat=111&_nc_oc=AQmh8S8X-9qxxsNggf4D3g0cSEehXdgZHQkng6KzeDjhjc4JY_PpPEWuYuCZq9ZkDKQ&_nc_ht=scontent.fdac5-1.fna&oh=da7cf634863baf03ce30203f835e188a&oe=5DDF483C');
Rdouble = im2double(R);
S = 1.5*log(1+Rdouble);
imshow(S);