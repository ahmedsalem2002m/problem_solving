void main() {
  Solution s = Solution();
  print(s.jump([2, 3, 1, 1, 4]));
}

class Solution {
  int jump(List<int> nums) {
    int jumps = 0;
    int farthest = 0;
    int currentEnd = 0;

    for (int i = 0; i < nums.length - 1; i++) {
      if (i + nums[i] > farthest) {
        farthest = i + nums[i];
      }

      if (i == currentEnd) {
        jumps++;
        currentEnd = farthest;
      }
    }

    return jumps;
  }
}
