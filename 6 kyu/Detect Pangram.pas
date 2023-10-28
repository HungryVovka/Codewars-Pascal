// -----------------------------------------------------------
// A pangram is a sentence that contains every single letter of the alphabet at least once. For example, the sentence "The quick brown fox jumps over 
// the lazy dog" is a pangram, because it uses the letters A-Z at least once (case is irrelevant).
// 
// Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.
// -----------------------------------------------------------

unit Kata;

interface

function IsPangram (s: string): boolean;

implementation

uses
  SysUtils;

function IsPangram (s: string): boolean;
const
  engAlphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
var
  i: Integer;
begin
  s := UpperCase(s);
  for i := 1 to Length(engAlphabet) do
    if Pos(engAlphabet[i], s) = 0 then
      Exit(False);
  IsPangram := True;
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