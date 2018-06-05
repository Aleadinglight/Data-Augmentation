% Input the original image
original_img= imread('owl.jpg');
% Define the input wanted from the original image
input_width = 500;
input_height = 500;
% Define how many pixels you want to shift, carefully calculate it with
% respect to the input width and the original image width.
shifting_value = [100,    0, -100,    0;
                    0   100,    0, -100];
% Define the value for color shifting
shifting_color = [ 20, -20,  5, 50;
                  -20,  20,  0,  0;
                   20,  20, 50, -10];
                          
% Crop the center image
original_center_img = center_crop(original_img, input_width, input_height, 0, 0);
% Get R,G,B channel
[red, green, blue] = get_color_channel(original_center_img);
% Get the Greyscale channel
gray = rgb2gray(original_center_img);
subplot(4,6, [3 4 9 10]), imshow(original_img); title('Orginal');
subplot(4,6,6), imshow(gray); title('Grayscale');
subplot(4,6,12), imshow(red); title('Red channel');
subplot(4,6,18), imshow(green); title('Green channel');
subplot(4,6,24), imshow(blue); title('Blue channel');

% Add image noise
img_noise = imnoise(original_center_img,'gaussian',0.04);
subplot(4,6,15), imshow(img_noise); title('Add Gaussian noise');
img_noise = imnoise(original_center_img,'salt & pepper',0.04);
subplot(4,6,16), imshow(img_noise); title('Add Salt & Pepper noise');
img_resized = imresize(original_img, [input_width input_height]);
subplot(4,6,21), imshow(img_resized); title('Resize image');
img_rotated = imrotate(original_center_img, 5);
subplot(4,6,22), imshow(img_rotated); title('Rotate image');

pic_id = -5;
for i=1:4
    pic_id = pic_id+6;
    % Random center crop
    center_img = center_crop(original_img, input_width, input_height, shifting_value(1,i), shifting_value(2,i));
    subplot(4,6,pic_id), imshow(center_img); title('Random center crop');
    % Flip the image
    [flip] = flip_image(center_img);
    subplot(4,6,pic_id+1), imshow(flip); title('Mirror version');
    % Shift the color channel
    img_shiftcolor = color_shifting(original_center_img, shifting_color(1,i), shifting_color(2,i), shifting_color(3,i));
    subplot(4,6,pic_id+4), imshow(img_shiftcolor); title('Color shifting');
end


function [img_shiftcolor]=color_shifting(img, shift_red, shift_green, shift_blue)
    img_shiftcolor = img;
    img_shiftcolor(:,:,1)=img_shiftcolor(:,:,1)+shift_red;
    img_shiftcolor(:,:,2)=img_shiftcolor(:,:,2)+shift_green;
    img_shiftcolor(:,:,3)=img_shiftcolor(:,:,3)+shift_blue;
    
end

function [center_img] = center_crop(img, width, height, shiftwidth, shiftheight )
    img_size = size(img);
    heightbot = fix( (img_size(1)-height)/2 + shiftheight);
    heighttop = heightbot+height;
    widthleft = fix((img_size(2)-width)/2 + shiftwidth);
    widthright = widthleft+width;
    center_img = img(heightbot:heighttop, widthleft:widthright,:);
end

function [flip] = flip_image(img)
    flip = flipdim(img,2);
end

function [r, g, b] = get_color_channel(img)
    r=img(:,:,1);
    g=img(:,:,2);
    b=img(:,:,3);
    temp = zeros(size(img, 1), size(img, 2));
    r = cat(3, r, temp, temp);
    g = cat(3, temp, g, temp);
    b = cat(3, temp, temp, b);
end