% Image Segmentation: Implement a basic image segmentation algorithm (e.g. thresholding). 
% Read the input image
%inputImage = imread('G:\IT Workshop CSBS Sem 7_Final Year\Lab\2\Flower1.jpg'); % Replace 'input_image.jpg' with your image file
inputImage = imread('C:\Users\Varad\Pictures\IPPR\butterfly.jpg');
% Convert the image to grayscale if it is not already
grayImage = rgb2gray(inputImage);

% Display the original grayscale image
figure;
imshow(grayImage);
title('Original Grayscale Image');
% Choose a threshold value
thresholdValue = 128; % You can adjust this value based on your needs
%Here, we set a threshold value of 128. You can adjust this value based on the characteristics of your image and the desired segmentation result.

% Perform thresholding
binaryImage = grayImage > thresholdValue;
%This line creates a binary image by comparing each pixel value in the grayscale image to the threshold value. Pixels with values greater than the threshold are set to white (1), and those with values less than or equal to the threshold are set to black (0).
% Display the binary (segmented) image
figure;
imshow(binaryImage);
title(['Binary Image (Threshold = ', num2str(thresholdValue), ')']);
% Optional: Save the binary image
imwrite(binaryImage, 'segmented_image.jpg'); % Replace 'segmented_image.jpg' with desired output file name