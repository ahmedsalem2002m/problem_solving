void main() {
  Solution s = Solution();
  print(s.removeDuplicates([0,0,1,1,1,2,2,3,3,4]));
}

class Solution {
  int removeDuplicates(List<int> nums) {
    int i = 0;
    int k = 1;
    while (i < nums.length-1) {
      if (nums[i] != nums[i+1]) {
        nums[k] = nums[i+1];
        k++;
      }
      i++;
    }
    return k;
  }
}
