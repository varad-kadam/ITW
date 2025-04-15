%Image Compression: Implement an image compression techniques using MATLAB
% Read the original image
I = imread('C:\Users\Varad\Pictures\IPPR\butterfly.jpg');

% Compress the image using JPEG with a quality factor
quality = 75; % Quality factor (0 to 100)
imwrite(I, 'compressed_image.jpg', 'jpg', 'Quality', quality);

% Read the compressed image
compressedImage = imread('compressed_image.jpg');

% Display the original and compressed images
figure;
subplot(1, 2, 1);
imshow(I), title('Original Image');

subplot(1, 2, 2);
imshow(compressedImage), title('Compressed Image');

%2. JPEG 2000 Compression (Lossless)
%JPEG 2000 provides lossless compression and is available through the MATLAB imwrite function with the 'jp2' format.
% Read the original image
I = imread('C:\Users\Varad\Pictures\IPPR\butterfly.jpg'); % Use a PNG or TIFF image for lossless compression

% Compress the image using JPEG 2000
imwrite(I, 'compressed_image.jp2', 'jp2');

% Read the compressed image
compressedImage2 = imread('compressed_image.jp2');

% Display the original and compressed images
figure;
subplot(1, 2, 1);
imshow(I), title('Original Image');

subplot(1, 2, 2);
imshow(compressedImage2), title('Compressed Image');

%3. Run-Length Encoding (RLE) Compression (Lossless)
%Run-Length Encoding is a simple lossless compression technique suitable for images with large areas of uniform color.
function [compressedImage, dict] = rleCompress(image)
    % Convert image to binary format
    image = uint8(image);

    % Initialize variables
    dict = [];
    compressedImage = [];
    currentValue = image(1);
    count = 1;

    % Perform RLE compression
    for i = 2:numel(image)
        if image(i) == currentValue
            count = count + 1;
        else
            dict = [dict; currentValue];
            compressedImage = [compressedImage; count];
            currentValue = image(i);
            count = 1;
        end
    end

    % Append the last run
    dict = [dict; currentValue];
    compressedImage = [compressedImage; count];
end