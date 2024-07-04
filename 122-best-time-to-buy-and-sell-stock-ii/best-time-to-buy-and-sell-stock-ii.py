class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        minPrice = prices[0]
        profit = 0
        for i in range(len(prices)):
            if prices[i] > minPrice:
                profit += prices[i] - minPrice
                minPrice = prices[i]
            else:
                minPrice = prices[i]
        return profit

            