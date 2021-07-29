%% select XML file for dectection
    detector = vision.CascadeObjectDetector('QD_2_5.xml');
    
%%Load input
    load 'C:\Users\Jiayu\iCloudDrive\Documents\BSU\2021summerResearch\Positive and Negative dataset\positiveFor.5&1\156_1b.tif';
    
%%Find the Bounding box
    bbox = step(detector,I);

%% mark the location on the image using a bounding box
    J = insertShape(I,'Rectangle',bbox);
    iamshow(J);
 
%%clean up
   release(detector);