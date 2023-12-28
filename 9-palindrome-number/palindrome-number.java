class Solution {
    public boolean isPalindrome(int x) {
        int remainder,sum = 0;
        int tmp = x;
        while(x>0){
            remainder = x%10;
            sum = (sum*10)+remainder;
            x = x/10;
        }
        if (tmp == sum){
            return true;
        }
        else{
            return false;
        }
    }
}