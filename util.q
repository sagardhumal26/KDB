////////////////////////////////////////////////////////////////////////////////////////
/// this function return true for weekday and false for weekend days
/// . \W is weeek offset
/// An offset of 0 corresponds to Saturday. The default is 2, which is Monday. 
////////////////////////////////////////////////////////////////////////////////////////

is_weekday:{$[(x mod 7)<2;0b;1b]}


Input:- "i am the best"
Output:- "I Am The Best"
q)" "sv ({@[x;0;upper]}each " " vs s)
"I Am The Best"
q)
