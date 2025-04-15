% Assignment 7: Feature Extraction: Implement texture-based feature extraction techniques using MATLAB
%Texture-based feature extraction techniques can be used to quantify the texture characteristics of an image. Some common texture feature extraction methods include the Gray-Level Co-occurrence Matrix (GLCM), Local Binary Pattern (LBP), and Gabor filters.
%The GLCM is a statistical method that analyzes spatial relationships
%between pixel intensities in an image. It computes Contrast, Correlation, Energy, and Homogeneity, which are essential in image processing, pattern recognition, and computer vision applications.
%These features help in tasks like texture classification, object recognition, and medical imaging analysis.
%1. Gray-Level Co-occurrence Matrix (GLCM): The GLCM method captures spatial relationships between pixels. From the GLCM, texture features like contrast, correlation, energy, and homogeneity can be extracted.
% Read the grayscale image
I = imread('G:\Sem3 2024-25\IT Workshop CSBS Sem 7_Final Year\Lab\7\Leena.jpg');
I = rgb2gray(I); % Convert to grayscale if it's a color image

% Compute the GLCM. The graycomatrix function constructs the GLCM by considering pixel pairs at different offsets (directions):
%0 1] → Horizontal (right neighbor), [-1 1] → Diagonal (top-right
%neighbor), [-1 0] → Vertical (top neighbor), [-1 -1] → Diagonal (top-left neighbor)
glcm = graycomatrix(I, 'Offset', [0 1; -1 1; -1 0; -1 -1]);

% Extract texture features from the GLCM
stats = graycoprops(glcm, {'contrast', 'correlation', 'energy', 'homogeneity'});

% Display the extracted features
disp('Contrast:');   %Contrast: Measures the intensity difference between neighboring pixels. Higher contrast means sharper edges.
disp(stats.Contrast);

disp('Correlation:');   %Correlation: Measures the similarity of pixel pairs across the image. A high value means pixels are highly correlated.
disp(stats.Correlation);

disp('Energy:');  %Energy: Also called Uniformity or Angular Second Moment (ASM), it represents the sum of squared GLCM elements, indicating texture uniformity.
disp(stats.Energy);

disp('Homogeneity:');  %Homogeneity: Measures the closeness of pixel pairs in GLCM. A high value indicates smoother textures.
disp(stats.Homogeneity);


%2. Local Binary Pattern (LBP):The LBP method captures local texture by thresholding the neighborhood of each pixel and forming a binary number.
% Read the grayscale image
I = imread('G:\Sem3 2024-25\IT Workshop CSBS Sem 7_Final Year\Lab\7\Leena.jpg');
Grayimage = rgb2gray(I); % Convert to grayscale if it's a color image
  
% Compute LBP features
lbpImage = extractLBPFeatures(Grayimage);

% Display the original grayscale image
figure;
imshow(I);
title('Original Image');

% Display the LBP image
figure;
imshow(lbpImage);    % Display with scaling for visualization
title('LBP Image');

%3. Gabor Filters:Gabor filters are used to analyze the frequency content in different orientations and scales.
% Read the grayscale image
I = imread('G:\Sem3 2024-25\IT Workshop CSBS Sem 7_Final Year\Lab\7\Leena.jpg');
I = rgb2gray(I); % Convert to grayscale if it's a color image

% Define Gabor filter parameters
wavelength = 4;
orientation = 0:45:135; % Different orientations

% Apply Gabor filter
gaborArray = gabor(wavelength, orientation);
gaborMag = imgaborfilt(I, gaborArray);

% Display the Gabor magnitude images
figure;
for i = 1:length(gaborArray)
    subplot(2, 2, i);
    imshow(gaborMag(:,:,i), []);
    theta = gaborArray(i).Orientation;
    lambda = gaborArray(i).Wavelength;
    title(sprintf('Orientation: %d, Wavelength: %d', theta, lambda));
end


