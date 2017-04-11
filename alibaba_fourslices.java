/*
Alibaba 2017 summer intern online coding accessment 
(position: java development engineer)
Description: Given an array of integer, divite them into 4 slices, whose sum
are equal. For example, given input {2,3,5,1,2,2,1,1,3}，the output should be:
{2,3},{5},{1,2,2},{1,1,3}. Return true if the input array can be divided as 
above. Otherwise, return false.
*/

static boolean solution(int[] nums){
    int slice1Index = 0;
    int slice2Index = nums.length - 1;
    int slice3Index = 0;
    int slice1Sum = nums[slice1Index];
    int tmpSum = nums[slice2Index];

    //First, get two slice from head and tail whose sums are equals
    while（slice1Sum != tmpSum{
        if (slice1Sum < tmpSum){
            slice1Index++;
            slice1Sum += nums[slice1Index];
        }
        else {
            slice2Index--;
            tmpSum += nums[slice2Index];
        }
        //Check if such two slices exist
        if(slice2Index - slice1Index < 3){
            return false;
        }
    }

    tmpSum = 0;
    //Check if such four slices exist since above condition satisfy
    for (int i = slice1Index + 1; i < slice2Index - 1; i++){
        tmpSum += nums[i];
        slice3Index = i;
        if(tmpSum == slice1Sum){
            break;
        }
    }
    //Check if got the third slice whose sum equals to formers
    if（tmpSum != slice1Sum）{
        return false;
    }

    tmpSum = 0;
    for(int i = slice3Index; i < slice2Index; i++){
        tmpSum += nums[i];
    }
    if(tmpSum == slice1Sum){
        return true;
    }

    return false;
}
