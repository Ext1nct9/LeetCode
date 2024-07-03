class Solution:
    def rotate(self, nums: List[int], k: int) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        nk = k%len(nums)
        r = len(nums) - nk
        new = nums[0:r]
        nums[0:r] = []
        nums.extend(new)

