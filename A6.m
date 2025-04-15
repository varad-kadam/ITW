% Assignment 6: Histogram equalization: Implement the Histogram equalization Technique for gray-scale images using MATLAB
%Histogram equalization is a technique used to improve the contrast of images by redistributing the intensity values. Below is the MATLAB code to implement histogram equalization for gray-scale images.

%1. Read and Display the Original Image
% Read the grayscale image
I = imread('C:\Users\Varad\Pictures\IPPR\butterfly.jpg');
I = rgb2gray(I); % Convert to grayscale if it's a color image

% Display the original image
figure;
subplot(1, 2, 1), imshow(I), title('Original Image');
subplot(1, 2, 2), imhist(I), title('Histogram of Original Image');

%2. Apply Histogram Equalization
% Apply histogram equalization
equalizedImage = histeq(I);  %The histeq function performs histogram equalization, enhancing the image contrast.

% Display the equalized image and its histogram
figure;
subplot(1, 2, 1), imshow(equalizedImage), title('Equalized Image');
subplot(1, 2, 2), imhist(equalizedImage), title('Histogram of Equalized Image');

%3. Complete Example with Comparison
% Read the grayscale image
I = imread('C:\Users\Varad\Pictures\IPPR\butterfly.jpg');
I = rgb2gray(I); % Convert to grayscale if it's a color image

% Apply histogram equalization
equalizedImage = histeq(I);

% Display the original and equalized images along with their histograms
figure;

subplot(2, 2, 1), imshow(I), title('Original Image');
subplot(2, 2, 2), imhist(I), title('Histogram of Original Image');

subplot(2, 2, 3), imshow(equalizedImage), title('Equalized Image');
subplot(2, 2, 4), imhist(equalizedImage), title('Histogram of Equalized Image');
