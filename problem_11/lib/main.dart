void main() {
  Solution s = Solution();
  print(s.hIndex([4, 1, 5, 4, 5]));
}

class Solution {
  int hIndex(List<int> citations) {
    int num = citations.length;
    while (num > 0) {
      int h = 0;
      for (int i = 0; i < citations.length; i++) {
        if (citations[i] >= num) {
          h++;
          if (h == num) {
            return h;
          }
        }
      }
      num--;
    }
    return 0;
  }
}
