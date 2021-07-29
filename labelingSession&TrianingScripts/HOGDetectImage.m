%% select XML file for dectection
   detector = vision.CascadeObjectDetector('QD_2_5.xml');
    
%%Load input
   image = imread('Positive and Negative dataset\positiveFor.5&1\156_1b.tif');
    
    
%%Find the Bounding box
    bbox = step(detector,image);

%% mark the location on the image using a bounding box
    J = insertShape(image,'Rectangle',bbox);
    imshow(J);
 
%%clean up
   release(detector);