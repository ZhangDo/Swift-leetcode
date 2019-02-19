import UIKit

class Solution {
    static let map:[Character: Int] = ["I" : 1,"V" : 5,"X" : 10,"L" : 50,"C" : 100,"D" : 500,"M" : 1000]
    func romanToInt(_ s: String) -> Int {
        let reversed = s.reversed()//反转
        var preValue = 0
        return reversed.reduce(0) { (currentValue, key) -> Int in
            guard let existedValue = Solution.map[key] else {
                return currentValue
            }
            let resValue = (preValue > existedValue) ? (currentValue - existedValue) : (currentValue + existedValue)
            
            preValue = existedValue
            
            return resValue
        }
}
}
Solution().romanToInt("LVIII")
