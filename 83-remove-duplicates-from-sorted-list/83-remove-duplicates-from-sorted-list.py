# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def deleteDuplicates(self, head: Optional[ListNode]) -> Optional[ListNode]:
        
        curr=head
        while(curr and curr.next!=None):
            ahead=curr.next  #check the node ahead and compare the value with current node value
            if ahead.val==curr.val:
                curr.next=curr.next.next 
            else:
                curr=curr.next
        return head