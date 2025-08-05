class Solution {
public:
    bool isAnagram(string s, string t) {
        if(s.length() != t.length())
            return false;
        unordered_map<char, int>freqmap;
        for(char c : s)
            freqmap[c]++;
        for(char c : t){
            freqmap[c]--;
            if(freqmap[c] < 0)
                return false;
        }
        return true;
    }
};