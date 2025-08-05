class Solution {
public:
    bool containsDuplicate(vector<int>& nums) {
        unordered_map<int, int>freqmap;
        for(int num: nums){
            freqmap[num]++;
            if(freqmap[num] > 1){
                return true;
            }
            
        }
        return false;
        
    }
};