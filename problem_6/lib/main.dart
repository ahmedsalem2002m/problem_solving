
void main() {
  Solution s = Solution();
  s.rotate([1, 2, 3, 4, 5], 2);
}

class Solution {
  void rotate(List<int> nums, int k) {
    k %= nums.length;

    reverse(nums, 0, nums.length - 1);
    reverse(nums, 0, k - 1);
    reverse(nums, k, nums.length - 1);
  }

  void reverse(List<int> nums, int left, int right) {
    while (left < right) {
      int temp = nums[left];
      nums[left] = nums[right];
      nums[right] = temp;

      left++;
      right--;
    }
  }
}
