// -----------------------------------------------------------
// The cockroach is one of the fastest insects. Write a function which takes its speed in km per hour and returns it in cm per second, rounded down to 
// the integer (= floored).
// 
// For example:
// 
// 1.08 --> 30
// 
// Note! The input is a Real number (actual type is language dependent) and is >= 0. The result should be an Integer.
// -----------------------------------------------------------

unit Kata;

interface

function CockroachSpeed(s: Real): Integer;

implementation

function CockroachSpeed(s: Real): Integer;
begin
  Result := Trunc(s * 10000 / 360);
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