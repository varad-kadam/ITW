%Assignment 4: Edge Detection: Implement the various Edge Detection
%algorithms using MATLAB (popular edge detection algorithms.)

%1. Sobel Edge Detection
% Read the image
I = imread('G:\Sem3 2024-25\IT Workshop CSBS Sem 7_Final Year\Lab\4\Lenna.png');
I = rgb2gray(I); % Convert to grayscale if it's a color image

% Apply Sobel edge detection
sobelEdges = edge(I, 'sobel');

% Display the result
figure, imshow(sobelEdges), title('Sobel Edge Detection');

%2. Prewitt Edge Detection
% Read the image
I = imread('G:\IT Workshop CSBS Sem 7_Final Year\Lab\2\Flower1.jpg');
I = rgb2gray(I); % Convert to grayscale if it's a color image

% Apply Prewitt edge detection
prewittEdges = edge(I, 'prewitt');

% Display the result
figure, imshow(prewittEdges), title('Prewitt Edge Detection');

%3. Roberts Edge Detection
% Read the image
I = imread('G:\IT Workshop CSBS Sem 7_Final Year\Lab\2\Flower1.jpg');
I = rgb2gray(I); % Convert to grayscale if it's a color image

% Apply Roberts edge detection
robertsEdges = edge(I, 'roberts');

% Display the result
figure, imshow(robertsEdges), title('Roberts Edge Detection');

%4. Canny Edge Detection
% Read the image
I = imread('G:\IT Workshop CSBS Sem 7_Final Year\Lab\2\Flower1.jpg');
I = rgb2gray(I); % Convert to grayscale if it's a color image

% Apply Canny edge detection
cannyEdges = edge(I, 'canny');

% Display the result
figure, imshow(cannyEdges), title('Canny Edge Detection');

%5. Laplacian of Gaussian (LoG) Edge Detection
% Read the image
I = imread('G:\IT Workshop CSBS Sem 7_Final Year\Lab\2\Flower1.jpg');
I = rgb2gray(I); % Convert to grayscale if it's a color image

% Apply LoG edge detection
logEdges = edge(I, 'log');

% Display the result
figure, imshow(logEdges), title('Laplacian of Gaussian Edge Detection');

%6. Zero-cross Edge Detection
% Read the image
I = imread('G:\IT Workshop CSBS Sem 7_Final Year\Lab\2\Flower1.jpg');
I = rgb2gray(I); % Convert to grayscale if it's a color image

% Apply Zero-cross edge detection
zerocrossEdges = edge(I, 'zerocross');

% Display the result
figure, imshow(zerocrossEdges), title('Zero-cross Edge Detection');


%Example: Comparison of Different Edge Detection Methods
% Read the image
I = imread('G:\IT Workshop CSBS Sem 7_Final Year\Lab\2\Flower1.jpg');
I = rgb2gray(I); % Convert to grayscale if it's a color image

% Apply different edge detection methods
sobelEdges = edge(I, 'sobel');
prewittEdges = edge(I, 'prewitt');
robertsEdges = edge(I, 'roberts');
cannyEdges = edge(I, 'canny');
logEdges = edge(I, 'log');
zerocrossEdges = edge(I, 'zerocross');

% Display the results
figure;
subplot(2,3,1), imshow(sobelEdges), title('Sobel Edge Detection');
subplot(2,3,2), imshow(prewittEdges), title('Prewitt Edge Detection');
subplot(2,3,3), imshow(robertsEdges), title('Roberts Edge Detection');
subplot(2,3,4), imshow(cannyEdges), title('Canny Edge Detection');
subplot(2,3,5), imshow(logEdges), title('Laplacian of Gaussian Edge Detection');
subplot(2,3,6), imshow(zerocrossEdges), title('Zero-cross Edge Detection');



