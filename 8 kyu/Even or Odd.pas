// -----------------------------------------------------------
// Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.
// -----------------------------------------------------------

unit Kata;

{$mode objfpc}{$H+}

interface
function EvenOrOdd(Num: Integer): String;

implementation

function EvenOrOdd(Num: Integer): String;
begin
  if Num mod 2 = 0 then
    Result := 'Even'
  else
    Result := 'Odd';
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