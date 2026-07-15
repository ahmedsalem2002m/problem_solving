void main() {
  Solution s = Solution();
  s.maxProfit([7,10, 2, 3, 20, 5, 6, 7]);
}

class Solution {
  int maxProfit(List<int> prices) {
    int maxProfit = 0;
    for (int i = 0; i < prices.length-1; i++) {
      if (prices[i + 1] > prices[i]) {
        maxProfit = maxProfit + (prices[i + 1] - prices[i]);
      }
    }

    return maxProfit;
  }
}
