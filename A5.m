% Assignment 5: Morphological Operations: Implement dilation and erosion operations on binary images.  

%1. Dilation Operation--Dilation adds pixels to the boundaries of objects in an image. The number of pixels added depends on the size and shape of the structuring element used.
% Read the binary image
binaryImage = imread('G:\Sem3 2024-25\IT Workshop CSBS Sem 7_Final Year\Lab\5\Cameraman.png');
binaryImage = imbinarize(binaryImage); % Ensure the image is binary

% Create a structuring element
se = strel('square', 3); %3 means-3*3 Square.  % You can also use ('disk',15 means disk radius 15), ('line', 10,45 means length 10 and 45 degree,),  ('ball', 15,5 means Radius 15 and 5 hight)etc.

% Apply dilation
dilatedImage = imdilate(binaryImage, se);

% Display the results
figure;
subplot(1, 2, 1), imshow(binaryImage), title('Original Binary Image');
subplot(1, 2, 2), imshow(dilatedImage), title('Dilated Image');

%2. 2. Erosion Operation Erosion removes pixels from the boundaries of objects in an image. The number of pixels removed depends on the size and shape of the structuring element used.
% Read the binary image
binaryImage = imread('G:\IT Workshop CSBS Sem 7_Final Year\Lab\5\Cameraman.png');
binaryImage = imbinarize(binaryImage); % Ensure the image is binary

% Create a structuring element
se = strel('square', 3); % You can also use 'disk', 'line', etc.

% Apply erosion
erodedImage = imerode(binaryImage, se);

% Display the results
figure;
subplot(1, 2, 1), imshow(binaryImage), title('Original Binary Image');
subplot(1, 2, 2), imshow(erodedImage), title('Eroded Image');

%Comparison of Dilation and Erosion
% Read the binary image
binaryImage = imread('G:\IT Workshop CSBS Sem 7_Final Year\Lab\5\Cameraman.png');
binaryImage = imbinarize(binaryImage); % Ensure the image is binary

% Create a structuring element
se = strel('square', 3); % You can also use 'disk', 'line', etc.

% Apply dilation and erosion
dilatedImage = imdilate(binaryImage, se);
erodedImage = imerode(binaryImage, se);

% Display the results
figure;
subplot(1, 3, 1), imshow(binaryImage), title('Original Binary Image');
subplot(1, 3, 2), imshow(dilatedImage), title('Dilated Image');
subplot(1, 3, 3), imshow(erodedImage), title('Eroded Image');


%Custom Structuring Elements. We can create custom structuring elements to achieve specific effects. For example:
% Create a custom structuring element
seCustom = strel([0 1 0; 1 1 1; 0 1 0]);

% Apply dilation and erosion with the custom structuring element
dilatedCustom = imdilate(binaryImage, seCustom);
erodedCustom = imerode(binaryImage, seCustom);

% Display the results
figure;
subplot(1, 3, 1), imshow(binaryImage), title('Original Binary Image');
subplot(1, 3, 2), imshow(dilatedCustom), title('Dilated with Custom SE');
subplot(1, 3, 3), imshow(erodedCustom), title('Eroded with Custom SE');

%These MATLAB code examples provide a basic understanding of how to implement dilation and erosion on binary images. Adjust the structuring element size and shape according to your specific needs to achieve the desired morphological effect.
