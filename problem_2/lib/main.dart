void main() {
  Solution s = Solution();
  s.removeElement([0, 2, 3, 0, 1, 1, 1, 4, 5], 1);
}

class Solution {
  int removeElement(List<int> nums, int val) {
    int i = 0;
    int k = 0;
    // List<int> num = [];
    while (i < nums.length) {
      // print("object");
      if (nums[i] != val) {
        nums[k] = nums[i];
        k++;
      }
      i++;
    }
    return k;
  }
}
