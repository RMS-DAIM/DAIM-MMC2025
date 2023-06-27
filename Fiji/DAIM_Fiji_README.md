## Counting objects using Fiji

It is relatively simple to use Fiji to count objects in an image. Fiji software was developed from ImageJ (Fiji stands for **F**iji **I**s **J**ust **I**mageJ).

Here we will count the nuclei in an image and measure features such as area, and some morphological characteristics such as circularity and solidity.
The features we've measured are described in the ImageJ online guide [in this link](https://imagej.nih.gov/ij/docs/guide/146-30.html#toc-Subsection-30.7).

The steps to perform this task are:
* Open the image
* Use a filter to suppress image noise
* Segment images using grey level filtering
* Count objects
* Perform basic morphological quantification

The task can be done step by step from the menu functions within Fiji.

It can also be automated as a macro. There are two macros here. A very basic macro to count and measure the objects. A second macro with some additional steps to show the areas of each nuclei on a coloured scale and save the tables of results.
