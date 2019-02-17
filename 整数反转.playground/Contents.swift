import UIKit

class Solution {
    func reverse(_ x: Int) -> Int {
        var mod = 10
        var res = 0
        var currentNum = x
        while currentNum != 0 {
            let num = currentNum % mod
            res *= 10
            res += (num / (mod / 10))
            currentNum -= num
            mod *= 10
            if res > Int(Int32.max) || res < Int(Int32.min) {
                return 0
            }
        }
        return res
    }
}

Solution().reverse(789)
