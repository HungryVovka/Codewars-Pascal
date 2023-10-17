// -----------------------------------------------------------
// Given the triangle of consecutive odd numbers:
// 
//              1
//           3     5
//        7     9    11
//    13    15    17    19
// 21    23    25    27    29
// ...
// 
// Calculate the sum of the numbers in the nth row of this triangle (starting at index 1) e.g.: (Input --> Output)
// 
// 1 -->  1
// 2 --> 3 + 5 = 8
// -----------------------------------------------------------

unit Kata;

{$mode objfpc}{$H+}

interface

function RowSumOddNumbers(const N: Integer): Integer;

implementation

function RowSumOddNumbers(const N: Integer): Integer;
var
  first, second, i: Integer;
begin
  first := N * N - (N - 1);
  second := first + N * 2;
  Result := 0;
  for i := first to second - 1 do
  begin
    if i mod 2 <> 0 then
      Result := Result + i;
  end;
end;

end.

// or

unit Kata;

{$mode objfpc}{$H+}

interface

function RowSumOddNumbers(const N: Integer): Integer;

implementation

function RowSumOddNumbers(const N: Integer): Integer;
begin
  Result := N * N * N; 
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