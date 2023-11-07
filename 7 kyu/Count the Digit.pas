// -----------------------------------------------------------
// Take an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer.
// 
// Square all numbers k (0 <= k <= n) between 0 and n.
// 
// Count the numbers of digits d used in the writing of all the k**2.
// 
// Implement the function taking n and d as parameters and returning this count.
// 
// Examples:
// n = 10, d = 1 
// the k*k are 0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100
// We are using the digit 1 in: 1, 16, 81, 100. The total count is then 4.
// 
// The function, when given n = 25 and d = 1 as argument, should return 11 since
// the k*k that contain the digit 1 are:
// 1, 16, 81, 100, 121, 144, 169, 196, 361, 441.
// So there are 11 digits 1 for the squares of numbers between 0 and 25.
// 
// Note that 121 has twice the digit 1.
// -----------------------------------------------------------

unit Kata;

interface

function NbDig(n, d: Int64): Int64;

implementation

uses
  SysUtils;

function NbDig(n, d: Int64): Int64;
var
  count, i: Int64;
  square: String;
begin
  count := 0;
  for i := 0 to n do
  begin
    square := IntToStr(i * i);
    If Pos(IntToStr(d), square) > 0 then
      Inc(count, Length(square) - Length(
        StringReplace(square, IntToStr(d), '', [rfReplaceAll])));
  end;
  Result := count;
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
// Copyright (C) 2023 Vladimir Rukavishnikov
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