# Data-Augmentation

### INTRODUCTION
Neural Network and Deep Learning is becoming one the leading branch in the following years.
Although the accuracy in detection has been significantly improved using many new state-of-theart architectures of neural network, the result can still archive a more promising result when
applying modification to the data – data augmentation – increasing the dataset.

### TYPES OF DATA AUGMENTATION
1. Random cropping center:
In real life situation, usually the object that you wanted will be in the center of the image.
Therefore, random crop the center will give more data on the object.
2. Color shifting.
When shifting color, the object will be slightly different a little bit. Which can be think as
many different colors of the same object that exist.
3. Add noise:
Adding noise helps the training model have a more idea about the overall shape and size
of the object.
4. Rotating the image:
Rotating an image for better recognition when the object is not in the same vertical
direction in real life tasks.
5. Mirror:
Flip the object horizontally can create more dataset but in the different direction.

### HOW TO USE
Edit this line of the file into your image link
```
% Input the original image
original_img= imread('owl.jpg');
```
Change these two lines into the size of your Neural Network.
```
% Define the input wanted from the original image
input_width = 500;
input_height = 500;
```
Change these numbers to the value that you want your picture to be changed.
```
% Define how many pixels you want to shift, carefully calculate it with
% respect to the input width and the original image width.
shifting_value = [100,    0, -100,    0;
                    0   100,    0, -100];
% Define the value for color shifting
shifting_color = [ 20, -20,  5, 50;
                  -20,  20,  0,  0;
                   20,  20, 50, -10];
 ```
The values of these parameters above varied for many different image and type of deep learning.

### EXAMPLE OF RESULT
Please run the Project.m file and put on full screen to see the result with the best experience.
Here is an example of the output.

![Result](https://github.com/Aleadinglight/Data-Augmentation/blob/master/result.jpg)
