void main() {
  Solution s = Solution();
  print(s.removeDuplicates([0]));
}

class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.length <= 1) {
      return nums.length;
    }
    int i = 0;
    int k = 1;
    while (i < nums.length - 1) {
      if (nums[i] != nums[i + 1]) {
        nums[k] = nums[i + 1];
        k++;
      }
      i++;
    }
    return k;
  }
}
