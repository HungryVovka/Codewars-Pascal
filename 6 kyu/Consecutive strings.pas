// -----------------------------------------------------------
// You are given an array(list) strarr of strings and an integer k. Your task is to return the first longest string consisting of k consecutive strings 
// taken in the array.
// 
// Examples:
// strarr = ["tree", "foling", "trashy", "blue", "abcdef", "uvwxyz"], k = 2
// 
// Concatenate the consecutive strings of strarr by 2, we get:
// 
// treefoling   (length 10)  concatenation of strarr[0] and strarr[1]
// folingtrashy ("      12)  concatenation of strarr[1] and strarr[2]
// trashyblue   ("      10)  concatenation of strarr[2] and strarr[3]
// blueabcdef   ("      10)  concatenation of strarr[3] and strarr[4]
// abcdefuvwxyz ("      12)  concatenation of strarr[4] and strarr[5]
// 
// Two strings are the longest: "folingtrashy" and "abcdefuvwxyz".
// The first that came is "folingtrashy" so 
// longest_consec(strarr, 2) should return "folingtrashy".
// 
// In the same way:
// longest_consec(["zone", "abigail", "theta", "form", "libe", "zas", "theta", "abigail"], 2) --> "abigailtheta"
// 
// n being the length of the string array, if n = 0 or k > n or k <= 0 return "" (return Nothing in Elm, "nothing" in Erlang).
// 
// Note
// consecutive strings : follow one after another without an interruption
// -----------------------------------------------------------

unit Kata;

interface
  
type
  TStringArray = array of string;
  
function LongestConsec(strarr: TStringArray; k: Int64):String;

implementation

function LongestConsec(strarr: TStringArray; k: Int64):String;
var
  longest, check: String;
  n, i, j: Integer;
begin
  longest := '';
  n := Length(strarr);
  if (n = 0) or (k > n) or (k <= 0) then
    Exit('');
  for i := 0 to n - k do
  begin
    check := '';
    for j := 0 to k - 1 do
    begin
      check := check + strarr[i + j];
    end;
    if Length(longest) < Length(check) then
      longest := check;
  end;
  LongestConsec := longest;
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