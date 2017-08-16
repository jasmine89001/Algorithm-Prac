/* 
Date: 08/15/2017

Company: Mathworks EDG Programming Challenge B

Question: Hackland Election

Descriptions:
There are n citizens voting in this year's Hackland election. Each voter writes
the name of their chosen candidate on a ballot and places it in a ballot box. 
The candidate with the highes number of votes win the election; if two or more
candidates have the same number of votes, then the tied candidates' names are
ordered alphabetically and the last name wins.

Complete the election Winner function in your editor. It has 1 parameter:L an 
array of strings, votes, describing the votes in the ballot box. This function
must review these votes and return a string representing the name of the 
winning candidate.

Constraints: 1<= n <= 10^4

Input Format: An array of Strings

Output Format: 
Name of the person who has the max votes. If there are multiple people with
same number of votes(max) then print the last name.

Sample Input:
String[] votes = {"Alex", "Michael", "Harry", "Dave", "Michael", "Victor", 
"Harry", "Alex", "Mary", "Mary"};

Sample Output: Michael
*/

import java.util.Map;
import java.util.TreeMap;
import java.util.Collections;

public class HacklandElection{
    static String electionWinner(String[] votes){
        Map<String, Integer> map  = new Hashmap<>();
        int max = 0;

        for (String vote : votes){
            if (map.get(vote) == null){
                map.put(vote, 1);
            }
            else{
                int count = map.get(vote) + 1;
                map.put(vote, count);
                max = Math.max(max, count);
            }
            // map.put(vote, map.getOrDefault(vote, 0) + 1);
        }

        List<String> res = new ArrayList<>();
        for (Map.Entry<String, Integer> entry : map.entrySet()){
            if (entry.getValue() == max){
                res.add(entry.getKey());
            }
        }

        Collection.sort(res);
        return res.get(res.size() - 1);
    }   
}




