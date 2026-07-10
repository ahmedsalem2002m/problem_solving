void main() {
  Solution s = Solution();
  print(s.removeDuplicates([0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 2]));
}

class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.length <= 2) {
      return nums.length;
    }

    int i = 2;
    int k = 2;

    while (i < nums.length) {
      if (nums[i] != nums[k - 2]) {
        nums[k] = nums[i];
        k++;
      }
      i++;
    }

    return k;
  }
}
