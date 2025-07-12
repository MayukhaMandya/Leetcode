class Solution {
public:
    int minSubArrayLen(int target, vector<int>& nums) {
        int l = 0, r = 0, min_length = INT_MAX, sum = 0, n = nums.size();
        while(r < n){
            sum += nums[r];
            while(sum >= target){
                min_length = min(min_length, r - l + 1);
                sum -= nums[l];
                l++;
            }
            r++;
        }
        if(min_length == INT_MAX) return 0;
        return min_length;
    }
};