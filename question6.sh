import cv2
import numpy as np


image = cv2.imread('your_image.jpg')

threshold = (160, 160, 160)


typeA_count = 0
typeB_count = 0


for row in image:
    for pixel in row:
        # Get the RGB values of the pixel
        r, g, b = pixel

        if r > threshold[0] and g > threshold[1] and b > threshold[2]:
            typeA_count += 1
        else:
            typeB_count += 1


total_pixels = image.shape[0] * image.shape[1]


typeA_percentage = (typeA_count / total_pixels) * 100
typeB_percentage = (typeB_count / total_pixels) * 100

# Print the results
print("Percentage of typeA pixels: {:.2f}%".format(typeA_percentage))
print("Percentage of typeB pixels: {:.2f}%".format(typeB_percentage))

