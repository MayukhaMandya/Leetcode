class Solution {
public:
    int trap(vector<int>& height) {
        int n = height.size();
        int l = 0, r = n - 1;
        int trappedWater = 0;
        int leftMax = 0, rightMax = 0;
        while(l < r){
            if(height[l] < height[r]){
                if(height[l] > leftMax){
                    leftMax = height[l];
                }
                else{
                    trappedWater += leftMax - height[l];
                }
                l++;
            }
            else{
                if(height[r] > rightMax){
                    rightMax = height[r];
                }
                else{
                    trappedWater += rightMax - height[r];
                }
                r--;
            }
        } 
        return trappedWater;       
    }
};