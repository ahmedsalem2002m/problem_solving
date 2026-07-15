void main() {
  Solution s = Solution();
  print(s.maxProfit([0, 7, 4, 2, 10,1]));
}

class Solution {
  int maxProfit(List<int> prices) {
    int maxPrice = prices[prices.length - 1];
    int maxProfit = 0;
    for (int i = prices.length - 2; i >= 0; i--) {
      if (prices[i] > maxPrice) {
        maxPrice = prices[i];
      }
      if (prices[i] < maxPrice) {
        if ( maxPrice - prices[i] > maxProfit) {
          maxProfit = maxPrice - prices[i];
        }
      }
    }
    return maxProfit;
  }
}
