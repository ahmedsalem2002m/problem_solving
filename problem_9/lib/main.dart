void main() {
  Solution s = Solution();
  print(s.canJump([2, 0, 0, 0, 4]));
}

class Solution {
  bool canJump(List<int> nums) {
    int farthest = 0;

    for (int i = 0; i < nums.length; i++) {
      if (i > farthest) {
        return false;
      }

      farthest = farthest > i + nums[i]
          ? farthest
          : i + nums[i];

      if (farthest >= nums.length - 1) {
        return true;
      }
    }

    return true;
  }
}
