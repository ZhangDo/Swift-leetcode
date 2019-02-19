import UIKit

class Solution {
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.isEmpty {
            return ""
        }
        
        var firstString = strs.first!
        var firstStrLength = firstString.count
        
        for string in strs {
            let charCount = string.count
            if charCount == 0 {
                return ""
            }
            if charCount < firstStrLength {
                firstStrLength = charCount
                firstString = string
            }
        }
        
        var res = firstString
        
        for string in strs {
            while !string.hasPrefix(res) {
                res = String(res[..<res.index(res.endIndex, offsetBy: -1)])
                if res.isEmpty {
                    return ""
                }
            }
        }
        
        return res
    }
}

Solution().longestCommonPrefix(["aadaa","aa"])
