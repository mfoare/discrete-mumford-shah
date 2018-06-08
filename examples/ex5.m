% Reproduces last column of Fig. 10 in
%   M. Foare, N. Pustelnik, L. Condat, "Semi-Linearized Proximal 
%   Alternating Minimization for a Discrete Mumford–Shah Model", 
%   submitted to IEEE Transactions on Image Processing, Apr. 2018.

addpath('images');

im  = imread('../images/muscle2z-gray.png'); 
bet = 650;              % smoothing
lam = 1.5*4.0e-05;      % contour penalization

res = dms(im,bet,lam,'AddNoise',[2 100]);

figure(5), colormap gray
subplot(2,2,1); imagesc(res.ground_truth); title('Input image');
subplot(2,2,2); imagesc(res.data);         title('Degraded image');
subplot(2,2,3); imagesc(res.u);            title('Restored image');
subplot(2,2,4); plot_contours(res.e);      title('Contours');

rmpath('images');
