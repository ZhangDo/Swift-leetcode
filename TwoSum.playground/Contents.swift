import UIKit

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var array = [Int](repeatElement(0, count:2))
        var map = [Int: Int]()
        for i in 0..<nums.count {
            if map.keys.contains(target - nums[i]) {
                print(i)
                array[1] = i
                array[0] = map[target - nums[i]]!
                return array
            }
            print(i)
            map[nums[i]] = i
        }
        return array
    }
}

let s = Solution()
s.twoSum([1,2,7,15], 9)
