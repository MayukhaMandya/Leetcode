class Solution {
public:
    int jump(vector<int>& nums) {
        int end = 0, jumps = 0, farthest = 0;
        for(int i = 0;i < nums.size() - 1;i++){
            farthest = max(farthest, nums[i] + i);
            if(end == i){
                jumps += 1;
                end = farthest;
            }
        }
        return jumps;
        
    }
};