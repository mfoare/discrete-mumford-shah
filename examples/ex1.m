addpath('images');

im  = imread('cameraman.tif'); 
bet =10;              % smoothing
lam = .04.*4.0e-05;     % contour penalization

res = dms(im,bet,lam,'AddNoise',[1, 0.1]);

figure(1), colormap gray
subplot(2,2,1); imagesc(res.ground_truth); title('Input image');
subplot(2,2,2); imagesc(res.data);         title('Degraded image');
subplot(2,2,3); imagesc(res.u);            title('Restored image');
subplot(2,2,4); plot_contours(res.e);      title('Contours');

rmpath('images');