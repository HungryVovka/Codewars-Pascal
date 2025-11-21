// -----------------------------------------------------------
// Number is a palindrome if it is equal to the number with digits in reversed order. For example, 5, 44, 171, 4884 are palindromes, 
// and 43, 194, 4773 are not.
// 
// Write a function which takes a positive integer and returns the number of special steps needed to obtain a palindrome. The special 
// step is: "reverse the digits, and add to the original number". If the resulting number is not a palindrome, repeat the procedure 
// with the sum until the resulting number is a palindrome.
// 
// If the input number is already a palindrome, the number of steps is 0.
// 
// All inputs are guaranteed to have a final palindrome which does not overflow integer.
// 
// Example
// For example, start with 87:
// 
//   87 +   78 =  165     - step 1, not a palindrome
//  165 +  561 =  726     - step 2, not a palindrome
//  726 +  627 = 1353     - step 3, not a palindrome
// 1353 + 3531 = 4884     - step 4, palindrome!
// 
// 4884 is a palindrome and we needed 4 steps to obtain it, so answer for 87 is 4.
// 
// Additional info
// Some interesting information on the problem can be found in this Wikipedia article on Lychrel numbers.
// -----------------------------------------------------------

unit Kata;

interface

function PalindromeChainLength(n : integer): integer;

implementation

function PalindromeChainLength(n : integer): integer;
var
  steps: integer;
  x, rev, t: int64;

begin
  x := n;
  steps := 0;
  
  while True do
  begin
    rev := 0;
    t := x;
    
    while t > 0 do
    begin
      rev := rev * 10 + (t mod 10);
      t := t div 10;
    end;
    
    if x = rev then
      break;
    x := x + rev;
    Inc(steps);
  end;
  PalindromeChainLength := steps;
end;

end.

// -----------------------------------------------------------
// License
// Tasks are the property of Codewars (https://www.codewars.com/) 
// and users of this resource.
// 
// All solution code in this repository 
// is the personal property of Vladimir Rukavishnikov
// (vladimirrukavishnikovmail@gmail.com).
// 
// Copyright (C) 2025 Vladimir Rukavishnikov
// 
// This file is part of the HungryVovka/Codewars-Pascal
// (https://github.com/HungryVovka/Codewars-Pascal)
// 
// License is GNU General Public License v3.0
// (https://github.com/HungryVovka/Codewars-Pascal/blob/main/LICENSE)
// 
// You should have received a copy of the GNU General Public License v3.0
// along with this code. If not, see http://www.gnu.org/licenses/
// -----------------------------------------------------------