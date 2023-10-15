// -----------------------------------------------------------
// Your classmates asked you to copy some paperwork for them. You know that there are 'n' classmates and the paperwork has 'm' pages.
// 
// Your task is to calculate how many blank pages do you need. If n < 0 or m < 0 return 0.
// 
// Example:
// n= 5, m=5: 25
// n=-5, m=5:  0
// -----------------------------------------------------------

unit Kata;

interface

function Paperwork (n: Integer; m: Integer): Integer;

implementation

function Paperwork (n: Integer; m: Integer): Integer;
begin
  if (m < 0) or (n < 0) then
    Result := 0
  else
    Result := m * n;
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