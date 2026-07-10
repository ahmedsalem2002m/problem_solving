void main() {
  Solution s = Solution();
  print(s.majorityElement([2, 2, 1, 1, 1,1,1,1, 2, 2,3,3,3,3,3,3,3,3,3,3,3,3,3]));
}

class Solution {
  int majorityElement(List<int> nums) {
    Map<int, int> numbers = {};

    for (int i = 0; i < nums.length; i++) {
      if (numbers.containsKey(nums[i])) {
        numbers[nums[i]] = numbers[nums[i]]! + 1;
      } else {
        numbers[nums[i]] = 1;
      }
    }

    for (var entry in numbers.entries) {
      if (entry.value > nums.length ~/ 2) {
        return entry.key;
      }
    }

    return -1;
  }
}


