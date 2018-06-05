# Data-Augmentation

#INTRODUCTION
Neural Network and Deep Learning is becoming one the leading branch in the following years.
Although the accuracy in detection has been significantly improved using many new state-of-theart architectures of neural network, the result can still archive a more promising result when
applying modification to the data – data augmentation – increasing the dataset.

#TYPES OF DATA AUGMENTATION
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

EXAMPLE OF RESULT
Please run the Project.m file and put on full screen to see the result with the best experience. At
the beginning of the file. There is parameters that needed to be set with respect the size of
original picture and the output picture that you need. The values of these parameters varied for
many different image and type of deep learning. Therefore, it was set with some magic numbers,
which is totally normal in many projects. Please consider changing it if you are using it with
some other images that have different size.
Here is an example of the output.
