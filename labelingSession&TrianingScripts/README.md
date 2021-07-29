The folder contains the scripts for COD training on MATLAB and the labeling session from the app on MATLAB called image labeler.

version: MATLAB R2021a-academic use

How to use the script and the session: 
1.git clone the repo to your local machine

2.download MATLAB app, open the image labeler app using from MATLAB

3.open the file 1&.5Session using the image labeler app, then you can see the bounding boxes and you can add more bbox if you would like to.

4.click on export on the top right corner and choose export to workspace, choose table(NOT groundtruth )on the second drop down box, and it will create a instance variable at the workspace. (you can export to the file too, but the format will change to a groundTruth instead of a table, need to look into that more).

5.open the script file CODTraining.m and change the numStages and the FAR however you like, bigger NumStages and FAR means more accurate the result will be, remember to change the XML file name to the corresponding NumStages and FAR. Also remember to change the path of the negativeFolder to the path of the file on your local machine. 

6.click run and run the CODTraining.m, when you see the text like this:

                        Automatically setting ObjectTrainingSize to [32, 35]
                Using at most 6621 of 6655 positive samples per stage
                Using at most 13242 negative samples per stage

                --cascadeParams--
                Training stage 1 of 2
                [........................................................................]
                Used 6621 positive and 13242 negative samples
                Time to train stage 1: 5 seconds

                Training stage 2 of 2
                [........................................................................]
                Used 6621 positive and 3179 negative samples
                Time to train stage 2: 7 seconds

                Training complete
                
it means it runs successfully.

7. Then to test the training result, you can open the HOGDetectImage.m file, and change the image path to other images, then click run and you will see the result like this:
               ![image](https://user-images.githubusercontent.com/55926282/127543867-0d10c3d8-1259-4067-85e2-b105faf7a66d.png)


*setbacks: In the file CODTraining.m if the numStage is greater than 2,then there will be a error/warning showing noenough negative samples to complete the rest of the stage, so it's not accurate enough, but will update again soon with more negative samples. 


               
 
  
  
