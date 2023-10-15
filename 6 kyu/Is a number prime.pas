// -----------------------------------------------------------
// Define a function that takes an integer argument and returns a logical value true or false depending on if the integer is a prime.
// 
// Per Wikipedia, a prime number ( or a prime ) is a natural number greater than 1 that has no positive divisors other than 1 and itself.
// 
// Requirements
// You can assume you will be given an integer input.
// You can not assume that the integer will be only positive. You may be given negative numbers as well ( or 0 ).
// NOTE on performance: There are no fancy optimizations required, but still the most trivial solutions might time out. Numbers go up to 2^31 ( or 
// similar, depending on language ). Looping all the way up to n, or n/2, will be too slow.
// 
// Example
// IsPrime(1) = false
// IsPrime(2) = true
// IsPrime(-1) = false
// -----------------------------------------------------------

unit Kata;

interface

function IsPrime (n: Integer): Boolean;

implementation

function IsPrime (n: Integer): Boolean;
var
  numsq, i: Integer;
begin
  if n < 2 then
    Result := False
  else begin
    numsq := Trunc(Sqrt(n));
    i := 2;
    while i <= numsq do begin
      if n mod i = 0 then begin
        Result := False;
        Exit;
      end;
      Inc(i);
    end;
    Result := True;
  end;
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