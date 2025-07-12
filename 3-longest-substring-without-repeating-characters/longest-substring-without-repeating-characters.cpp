class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        vector<int> lastIdx(256, -1);  // stores last index of each ASCII character
    int L = 0, ans = 0;

    for (int R = 0; R < s.size(); ++R) {
        char c = s[R];
        // If character was seen in current window, move L forward
        if (lastIdx[c] >= L) {
            L = lastIdx[c] + 1;
        }
        lastIdx[c] = R;  // update last seen index
        ans = max(ans, R - L + 1);  // update max length
    }

    return ans;


        
    }
};