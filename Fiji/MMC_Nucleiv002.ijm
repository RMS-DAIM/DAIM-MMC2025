macro "MMC_Nucleiv002"{

/*
 * ImageJ / Fiji macro to count and measure an image of nuclei
 * This macro uses a simple filter to smooth the image and remove noise
 * It then identifies bright regions of the image (thresholding) to produce a black and white image
 * The thresholded bright regions are then measured by a partical analyzer and recorded as ROIs
 * By setting various measurement parameters the size, intensity and morphology of each nuclei is also recorded.
 */
 
/*
 * This macro requires installation of IJPB Plugins (MorphoLibJ) to show the image labelled with nuclei area.
 */
 
// Open the image to analyse. The simplest way to open a single image is to drag & drop into Fiji.
// However, you could use the command below (remove the // to activate the line of code). 
// Or simply go to File > Open...
//open("C:/Users/Dale/Downloads/DaimNuclei/Nuclei.ome.tiff");


selectWindow("Nuclei.ome.tiff"); 			// Select the image to analyse
run("Fire");								// change its colour to clearly see small variations in brightness
run("Duplicate...", "title=Nuclei-copy"); //work on a duplicate image
run("Median...", "radius=3");				// blur the image, this could be with a variety of filter, here median is used to preserve the shape of the nuclei
setAutoThreshold("Default dark");			// Set a level of brightness to threshold the image, this is calculated from the image histogram
setOption("BlackBackground", true);			// set the background colour
run("Convert to Mask");						// make a black and white (binary) thresholded image
// choose the features to measure...
// also specify to measure the properties of the ROIs on the original image
run("Set Measurements...", "area mean centroid perimeter fit shape feret's limit display redirect=Nuclei.ome.tiff decimal=3");
// run the analysis...
run("Analyze Particles...", "size=5-Infinity show=[Count Masks] display exclude clear summarize add composite");
rename("Labelled image"); 					// we have made a labeled image, and we can display results on here
// show the ROIs on the original image...
selectWindow("Nuclei.ome.tiff");
roiManager("Show All");
// show a result on the labelled image..
selectWindow("Labelled image");
call("inra.ijpb.plugins.LabelToValuePlugin.process", "Table=Results", "Column=Area", "Min=1", "Max=100");
run("Assign Measure to Label");
run("Fire");
// make an image to show the display range of the Fire LUT
newImage("Nuclei Area 0-100", "8-bit ramp", 255, 20, 1);
run("Fire");

// save the results
roiManager("Save", "C:/Users/Dale/Desktop/NucleiRoiSet.zip");
saveAs("Results", "C:/Users/Dale/Desktop/NucleiResults.csv");
saveAs("Results", "C:/Users/Dale/Desktop/NucleiSummary.csv");
}

