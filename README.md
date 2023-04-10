# Bashfiles for Big Data Tutorials 

For when you need to wipe your linux VM and start again. 

A couple of things to note, none of the bash scripts test for previous existance of files or lines, they are designed to run one after the other once. 
The hbase install does not work completely, not sure why and not sure if I will fix it. 

Run the files in this order 
*  1: hadoop_Install.sh
*  2: hadoop_config.sh
*  3: hadoop_Test.sh
*  4: hbase_Install.sh
*  5: tutorial_2_pt1.sh
*  6: tutorial_2_pt2.sh
*  7: tutorial_2_pt3.sh
*  8: tutorial_3.sh
*  9: tutorial_3_pt2.sh
*  10: tutorial_5_pt1.sh
*  11: tutorial_5_pt2.sh
*  12: tutorial_5_pt3.sh

Files from tutorial_6_pt1.sh are not runable as there are more than shell commands in the files. You need to pull them on to the linux vm and from there open the file run the commands sequentially. 
