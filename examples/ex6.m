% See last column of Fig. 10 in
%    M. Foare, N. Pustelnik, L. Condat, "Semi-Linearized Proximal 
%       Alternating Minimization for a Discrete Mumford-Shah Model", 
%       IEEE Transactions on Image Processing, 2019.

addpath('images');

im  = imread('dots-256.png'); 
bet = 350;              % smoothing
lam = 1.5;              % contour penalization

res = dms(im,bet,lam,'AddNoise',[2 100]);

figure(6)
subplot(221); imshow(res.ground_truth); title('Input image');
subplot(222); imshow(res.data,[]);      title('Degraded image');
subplot(223); imshow(res.u,[]);         title('Restored image');
subplot(224); plot_contours(res.e);     title('Contours');

rmpath('images');
