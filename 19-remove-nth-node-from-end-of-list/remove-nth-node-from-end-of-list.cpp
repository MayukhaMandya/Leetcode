/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution {
public:
    ListNode* removeNthFromEnd(ListNode* head, int n) {
        ListNode* buffer = new ListNode(0);
        buffer-> next = head;
        ListNode* left = buffer;
        ListNode* right = buffer;
        for(int i = 0;i < n;i++){
            right = right -> next;
        }
        while(right -> next != nullptr){
            right = right -> next;
            left = left -> next;
        }
        ListNode* deleted_node = left -> next;
        left -> next = left -> next -> next;
        delete deleted_node;
        ListNode* new_head = buffer->next;
        delete buffer;
        return new_head; 
        
    }
};