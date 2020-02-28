addpath('images');

im  = imread('cameraman.tif'); 
bet = 10;      % smoothing
lam = .01;     % contour penalization

res = dms(im,bet,lam);

figure(1)
subplot(221); imshow(res.ground_truth); title('Input image');
subplot(222); imshow(res.data);         title('Degraded image');
subplot(223); imshow(res.u);            title('Restored image');
subplot(224); plot_contours(res.e);     title('Contours');

rmpath('images');