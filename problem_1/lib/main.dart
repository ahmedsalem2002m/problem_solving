void main() {
  Solution s = Solution();
  s.merge([2, 0], 1, [1], 1);
}

class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    int indexNum1 = m - 1;
    int indexNum2 = n - 1;
    int writeIndex = n + m - 1;

    for (int i = writeIndex; i >= 0; i--) {
      if (indexNum1 >= 0 && indexNum2 >= 0) {
        if (nums1[indexNum1] >= nums2[indexNum2]) {
          nums1[i] = nums1[indexNum1];
          indexNum1--;
        } else {
          nums1[i] = nums2[indexNum2];
          indexNum2--;
        }
      } else if (indexNum2 >= 0) {
        nums1[i] = nums2[indexNum2];
        indexNum2--;
      }
    }
  }
}
