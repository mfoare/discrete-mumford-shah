% Reproduces last column of Fig. 11 in
%   M. Foare, N. Pustelnik, L. Condat, "Semi-Linearized Proximal 
%   Alternating Minimization for a Discrete Mumford–Shah Model", 
%   submitted to IEEE Transactions on Image Processing, Apr. 2018.

addpath('images');

im  = imread('../images/mires-256.png'); 
bet = 20;               % smoothing
lam = 0.07*4.0e-05;     % contour penalization

res = dms(im,bet,lam,'AddNoise',[1 0.2],'AddBlur',[1 7 2],...
                                                    'InitializationV','0');

figure(6), colormap gray
subplot(2,2,1); imagesc(res.ground_truth); title('Input image');
subplot(2,2,2); imagesc(res.data);         title('Degraded image');
subplot(2,2,3); imagesc(res.u);            title('Restored image');
subplot(2,2,4); plot_contours(res.e);      title('Contours');

rmpath('images');
