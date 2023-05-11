////////////////////////////////////////////////////////////////////////////////////////
/// this function return true for weekday and false for weekend days
/// . \W is weeek offset
/// An offset of 0 corresponds to Saturday. The default is 2, which is Monday. 
////////////////////////////////////////////////////////////////////////////////////////

is_weekday:{$[(x mod 7)<2;0b;1b]}

/This function return next day for given date 
findNextDay:{[dt;day]
  dayOffset:`sat`sun`mon`tue`wed`thu`fri!til 7;
  offset:dayOffset[day];
  d:dt mod 7;
  dt + $[d<offset; offset-d; (7-d)+offset]
};

/findNextDay[;`fri]each (.z.d+til 15)

Input:- "i am the best"
Output:- "I Am The Best"
q)" "sv ({@[x;0;upper]}each " " vs s)
"I Am The Best"
q)
