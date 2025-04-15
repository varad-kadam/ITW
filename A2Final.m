
%Image Filtering: Implement various image techniques on image in Spatial and filtering (e.g., LPF, HPF, etc edge detection, sharpening). 
% Read the image
image = imread('C:\Users\Varad\Pictures\IPPR\butterfly.jpg');
gray_image = rgb2gray(image); % Convert to grayscale if the image is in color

% Low-Pass Filtering (Gaussian Filter)
h = fspecial('gaussian', [5, 5], 1.0); %This creates a 5x5 Gaussian filter with a standard deviation of 1.0.
% This specifies the type of filter to create. In this case, it is a Gaussian filter.A Gaussian filter is commonly used in image processing for blurring, noise reduction, and smoothing. It applies a Gaussian function to each pixel, with more influence given to the center pixel and less to the surrounding pixels, following a bell-shaped curve.
%[5,5]-This creates a 5x5 averaging filter using the fspecial function. The filter size can be adjusted as needed.
%1.0: This specifies the standard deviation (sigma) of the Gaussian distribution. A smaller value of sigma leads to a sharper peak (less blurring), while a larger value of sigma results in a broader peak (more blurring).
lpf_image = imfilter(gray_image, h);  
%The imfilter function applies the Gaussian filter to the image, producing the smoothed image.
figure, imshow(lpf_image), title('Low-Pass Filtered Image');

% High-Pass Filtering (Laplacian Filter)
h = fspecial('laplacian', 0.2);   %The fspecial function creates a predefined 2-D filter.
%laplacian' specifies the type of filter to create, in this case, a Laplacian filter.
%The Laplacian filter is a high-pass filter used to emphasize areas of rapid intensity change (such as edges) in an image.
%0.2 is an optional parameter that specifies the filter's alpha value, which controls the shape of the Laplacian operator. The value must be in the range [0, 1]. A typical value for the alpha parameter is 0.2.
hpf_image = imfilter(gray_image, h);
%The result is stored in hpf_image, which is the high-pass filtered image emphasizing edges and fine details.
figure, imshow(hpf_image, []), title('High-Pass Filtered Image');
%The [] in imshow scales the display based on the range of pixel values in the image, which is useful for displaying the result of the filtering operation.


% Edge Detection
sobel_edges = edge(gray_image, 'sobel');
%The edge function with the 'sobel' method detects edges using the Sobel operator, which calculates the gradient of the image intensity at each pixel, highlighting regions of high spatial frequency that correspond to edges.
prewitt_edges = edge(gray_image, 'prewitt');
%Similar to Sobel, the 'prewitt' method uses the Prewitt operator, another gradient-based method for edge detection. It's slightly simpler than Sobel and is used for similar purposes.
canny_edges = edge(gray_image, 'canny');
%The 'canny' method uses the Canny edge detector, which is more advanced and involves multiple stages: noise reduction, gradient calculation, non-maximum suppression, and edge tracking by hysteresis. It typically produces cleaner and more precise edges.

figure, imshow(sobel_edges), title('Sobel Edge Detection');
figure, imshow(prewitt_edges), title('Prewitt Edge Detection');
figure, imshow(canny_edges), title('Canny Edge Detection');

% Image Sharpening
sharpened_image = imsharpen(gray_image);
%This line applies the sharpening filter to the grayscale image using the imsharpen function. The resulting sharpened image is stored in the variable sharpened_image. The imsharpen function enhances the edges and details in the image, making it appear sharper.
figure, imshow(sharpened_image), title('Sharpened Image');