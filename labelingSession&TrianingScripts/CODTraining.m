%%load positive images and bounding boxes of QDs

%%specify folder with negative imgaes
negativeFolder ='C:\Users\Jiayu\iCloudDrive\Documents\BSU\2021summerResearch\Positive and Negative dataset\negativeFor.5&1';

%%train the detector
NumStages = 2;
FAR = 0.05;

trainCascadeObjectDetector('QD_2_5.xml',gTruth,negativeFolder,"NumCascadeStages",NumStages,"FalseAlarmRate",FAR);
