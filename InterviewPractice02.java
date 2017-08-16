/* 
Date: 08/15/2017

Company: Mathworks EDG Programming Challenge B

Question: Reduce the Fractions
*/

static String[] ReduceFraction(String[] fractions){
    String[] res = new String[fractions.length];

    for (int i = 0; i < fractions.length; i++){
        String[] nums = fractions[i].split("/");
        int[] n = new int[2];
        n[0] = Integer.parseInt(nums[0]);
        n[1] = Integer.parseInt(nums[1]);

        StringBuilder sb = new StringBuilder();
        sb.append(n[0]/(GCD(n[0], n[1]))+"/"+n[1]/(GCD(n[0], n[1])));
        res[i] = sb.toString();
    }
    return res;
}

static int GCD(int n1, int n2) {
    if (n2 == 0) return n1;
    return GCD(n2, n1%n2);
}