// -----------------------------------------------------------
// Clock shows h hours, m minutes and s seconds after midnight.
// 
// Your task is to write a function which returns the time since midnight in milliseconds.
// 
// Example:
// h = 0
// m = 1
// s = 1
// 
// result = 61000
// 
// Input constraints:
// 
// 0 <= h <= 23
// 0 <= m <= 59
// 0 <= s <= 59
// -----------------------------------------------------------

unit Kata;

interface

function Past(H: Integer; M: Integer; S: Integer): Integer;

implementation

function Past(H: Integer; M: Integer; S: Integer): Integer;
begin
  Result := (H * 60 * 60 * 1000) + (M * 60 * 1000) + (S * 1000);
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