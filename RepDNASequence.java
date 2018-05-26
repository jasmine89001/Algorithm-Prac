//Write a function to find all the 10-letter-long sequences (substrings) that occur more than once in a DNA molecule.
//Example:
//Input: s = "AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT"
//Output: ["AAAAACCCCC", "CCCCCAAAAA"]

class Solution {
    public List<String> findRepeatedDnaSequences(String s) {
        Set<String> result = new HashSet();
        if( s==null || s.length() <2 )
            return new ArrayList();
        Set<String> temp = new HashSet();
        for(int i=0; i<s.length()-9; i++){
            String x = s.substring(i, i+10);
            if(temp.contains(x)){
                result.add(x);
            }
            else
                temp.add(x);
        }
        return new ArrayList(result);
        
    }
}