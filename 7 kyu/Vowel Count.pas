// -----------------------------------------------------------
// Return the number (count) of vowels in the given string.
// 
// We will consider a, e, i, o, u as vowels for this Kata (but not y).
// 
// The input string will only consist of lower case letters and/or spaces.
// -----------------------------------------------------------

unit Kata;

interface

function GetCount (s: string): Integer;

implementation

uses
  SysUtils, StrUtils;

function GetCount (s: string): Integer;
var
  i, vowelCount: Integer;
begin
  vowelCount := 0;
  for i := 1 to Length(s) do
  begin
    if AnsiContainsText('aeiou', s[i]) then
      Inc(vowelCount);
  end;
  Result := vowelCount;
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