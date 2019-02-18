import UIKit
//**********1.整数反转 再比较**********//
/*
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 {
            return false
        }
        var mod = 10
        var reverse = 0
        var currentNum = x
        while currentNum != 0 {
            let num = currentNum % mod
            reverse *= 10
            reverse += (num / (mod / 10))
            currentNum -= num
            mod *= 10
            if reverse > Int(Int32.max) || reverse < Int(Int32.min) {
                return false
            }
        }
        if reverse == x {
            return true
        } else {
            return false
        }
        
    }
}
 */
//**********2.前半部分&后半部分进行比较**********//
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var reverNum = 0
        let mod = 10
        var currentNum = x
        if x < 0 || (x % mod == 0 && x != 0) {
        return false
    }
        while currentNum > reverNum {
            reverNum = reverNum * mod + currentNum % mod
            currentNum /= 10
        }
        return currentNum == reverNum || currentNum == reverNum / 10
    }
    
}
Solution().isPalindrome(191)
