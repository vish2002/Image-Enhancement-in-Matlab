% SS INNOVATIVE ACTIVITY II

% BRANCH:ELECTRONICS AND TELECOMMUNICATIONS

% SEMSESTER : VTH

% SECTION :B

% PROJECT TITLE: IMAGE DENOISING AND ENHANCEMENT USING MATLAB

%PROJECT MEMBERS: SUJAL YADAV (167)
%                 VISHAL KURVE (168)
%                 YASH KOLHE (170)

%SUBJECT TEACHER: MINAL PATIL MAM
%% IMAGE DENOISING AND ENHANCEMENT USING MATLAB
% Loading the image
originalImage = imread('C:\Users\HP PAVILION\Documents\Image Denoising and Enhancement\phpAtYk4M.png');  % Replace 'your_image.jpg' with your image file path

% Displaying the original image
figure;
imshow(originalImage);
title('Original Image');

% Adding Gaussian noise to the image
noisyImage = imnoise(originalImage, 'gaussian', 0, 0.01);  % Adjusting noise parameters as needed
figure;
imshow(noisyImage);
title('Noisy Image');

% Denoising the image using Gaussian filter
filterSize = 5;  % Adjust the filter size as needed
sigma = 1;  % Adjust the standard deviation as needed
gaussianFilter = fspecial('gaussian', filterSize, sigma);
denoisedImage = imfilter(noisyImage, gaussianFilter);
figure;
imshow(denoisedImage);
title('Denoised Image');

% Save the denoised image
imwrite(denoisedImage, 'denoised_image.jpg');

% Apply Laplacian filter for sharpening
sharpenedImage = imsharpen(denoisedImage, 'Amount', 2, 'Radius', 1);
figure;
imshow(sharpenedImage);
title('Sharpened Image');

% Saving the sharpened image
imwrite(sharpenedImage, 'sharpened_image.jpg');

% Adjusting color saturation
enhancedImage = imadjust(sharpenedImage, [0.1, 0.9], [0, 1]);  % Adjusting the values as needed
figure;
imshow(enhancedImage);
title('Enhanced Image');

% Saving the enhanced image
imwrite(enhancedImage, 'enhanced_image.jpg');

% Upscaling the image using bicubic interpolation
upscaledImage = imresize(enhancedImage, 2, 'bicubic');  % You can adjust the scaling factor
figure;
imshow(upscaledImage, 'InitialMagnification', 'fit');  % Display the upscaled image in the tab

% Saving the upscaled image
imwrite(upscaledImage, 'upscaled_image.jpg');
