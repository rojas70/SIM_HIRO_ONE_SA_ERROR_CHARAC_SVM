# data-005_SIM_HIRO_SA_ErrorCharac_SVM
Data from snap assembly work in simulation with the HIRO Robot. In particular this package is focusing on SVM classification of successful and failure tasks by using the string labelled data at the MC of the RCBHT. Location: Guangzhou, China. Dates: 2014.

The data was two main folders:
(i) SVM Training, Testing, and Plotting Data
(ii) Preliminary data:
Runs that were successful with slight variations in the nominal trajectory of the robot for the Approach (1st) state. Simply record Torques, EndEffector Cartesian Position, Current Joint Angles, and a State transition time vector. No SVM processing here.

To ensure that our input feature vector maintains the same size across different assembly trials, we construct the input feature vector as a one dimensional vector that consists of a given number of labels li, across six force-torque axes Fj, for a total of 1xR(liFj ). Each entry of the input feature vector counts the total number of corresponding labels that appeared in the assembly task for the appropriate force axis. The dimension for our feature vectors would be as follows: P-layer, 1xR54; MC- and LLB-layers, 1xR42.