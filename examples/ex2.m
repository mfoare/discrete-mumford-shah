% See Fig. 8:"polar bear" experiment in
%    M. Foare, N. Pustelnik, L. Condat, "Semi-Linearized Proximal 
%       Alternating Minimization for a Discrete Mumford-Shah Model", 
%       IEEE Transactions on Image Processing, 2019.

addpath('images');

im  = imread('BSDS500_polar_bear.jpg');
im  = rgb2gray(im);
bet = 6;                % smoothing
lam = 0.01;             % contour penalization

res = dms(im,bet,lam,'AddNoise',[1 0.05],'Edges','similar');

figure(2)
subplot(221); imshow(res.ground_truth);    title('Input image');
subplot(222); imshow(res.data,[]);         title('Degraded image');
subplot(223); imshow(res.u,[]);            title('Restored image');
subplot(224); plot_contours(res.e);        title('Contours');

figure(21)
imshow(res.u); 
hold on;
plot_contours(res.e); 
hold off;

rmpath('images');
