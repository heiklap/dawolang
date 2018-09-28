// Copyright (c) 2017, Heikki K Lappalainen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

///  * Mostly empty now, but:  Eventually dawolang analyzer needs some rules.
///  * Needed: Rules for forming and handling a sentence.
///  * Question: Method to give ready sentence to action-handler.
///  * NEXT: Handler for non-tracked words in incoming text.

library keywords;

import 'word.dart';

///  KeyWords class, mostly some notes for future development.
class KeyWords {
//  A: Area________________A:GLOBAL A:INNER A:LOCAL A:OUTER A:WAY =5
//   'A:': 'Area', //  GLOBAL INNER LOCAL  OUTER  WAY
//  TODO  this is howTo avoid creating 30 class. Or how??
  static int ruleArea() {
    print('-- this is wArea --');
    //  code here
    return 1;
  }

//  Argument type int cant be assigned to type Function, but ruleArea is OK.
  var wA = new Word('wArea', ':A', ruleArea);

//  a: Activity____________a:STAND a:TRANSPORT =2
// 'a:': 'Activity',

//  B: Boost??_____________B:HOORAY =1
// 'B:': 'Boost??', // :HOORAY

//  C: Command_____________C:CHECK-IN C:CUT C:DO C:FIND C:GEAR C:GRAB C:GO C:HIDE C:IGNORE C:LOCK C:ORDER C:OPEN C:PLAY C:RELAY C:RULE =15
//  c: command_____________c:TEST c:TODO c:USE c:WAIT c:WAKE-UP-SLEEPY-HEAD c:WAKE =6
// 'C:': 'Command', //  19
// 'c:': 'command', //
  static int ruleCommand() {
    print('-- this is wCommand --');
    //  code here
    return 1;
  }

//  Argument type int cant be assigned to type Function, but ruleArea is OK.
  var wC = new Word('wACommand', ':C', ruleCommand);

//  D: Data________________D:BUS D:FURY D:PHOTO D:SPLIT D:STUFF =5
// 'D:': 'Data', //  BUS  FORM  FURY  SPLIT  STUFF

//  E: Effort______________E:ANSWER E:CONQUER E:DEVELOPMENT E:GOAL E:PLAN E:TRY =6
// 'E:': 'Effort', //  ?   0

//  F: Functionality_______=0  :OK  :BROKEN
// 'F:': 'Functionality', //  0

//  G: Gear________________G:IDEA G:SHAPE G:STANCE G:VISION =4
// 'G:': 'Gear', //  Group  JOIN     GEAR!!!

// //  GROUP  KING  SELF  STAFF  TEAM  X-MEN

//  H: Human_______________H:ADM H:GROUP H:KING H:SELF H:STAFF H:TEAM H:X-MEN =7
// 'H:': 'Human', // ?? human / object like working entities.

// //  HELP  INFO  KNOW   NOTE  GUIDE

//  I: Info________________I:EXAMPLE I:GUIDE I:HELP I:HINT I:INFO I:MAP I:NOTE =7
// 'I:': 'Info', //  ? :GUIDE :INFO :KNOW :NOTE :HELP

//  J: Joint_______________J:JOIN J:SHARE =2
// 'J:': 'Joint', //  Joint ?   0   Job?

//  K: Kind________________K:KIND =1
// 'K:': 'Kind', //  Giving special access to some..   0

//  L: Lang________________L:MACRO L:RECORD L:TALK =3
// 'L:': 'Lang', //  ??  MACRO  NOT  RECORD

//  M: Message_____________M:MESSAGE M:PING =2
// 'M:': 'Message',

//  N: Navigate____________N:BACK N:DISTANCE N:DOWN N:FORWARD N:IN N:OUT N:ROUTE N:TO N:UP =9
// 'N:': 'Navigate', //  0

//  O: Order_______________O:FIRST O:LAST O:NEXT O:PREVIOUS O:SECOND =5
// 'O:': 'Order', //  0

//  #: ## Dawo-object ##___#:BATON #:LANG #:MILL #:PLACARD #:VALUE =5
// '#:': '## Dawo-object ##', // 6

  // €: Coding______________€:CODE €:INSTANCE =2
// '€:': 'Coding',

//  P: Phase_______________P:RUN P:START P:STOP =3
// 'P:': 'Phase', //   Permission  ALLOW  ASK  BLOCKED

//     Q: Quest_______________Q:HOW-TO Q:QUEST =2
// 'Q:': 'Quest', //  Quest / Question  1  HOW-TO

//  q: quantity____________q:ANY q:EMPTY q:HOW-MANY q:HOW-MUCH q:HOW-LONG q:ONLY q:ONE q:QUARTER =8
// 'q:': 'quantity',

  // R: Resource____________R:AREA R:USED R:USAGE =3
// 'R:': 'Resource', //  area  goal

  // Rx: Resource_special____=0
// 'Rx:': 'Resource_special',

  // ?: ?                 __?:CLIENT ?:FOR ?:NAME ?:QUIET ?:SECRET =5

//  &: &                 __=0
// '?:': '?                 ',
//
// '&:': '&                 ',

//  ///  Specification; giving some more information about entity.

//  S: State_______________S:ABLE S:CLOSED S:NOT-USED S:OFF S:ON S:OPEN S:PROBLEM S:READY S:ROLE =9

//  'S:': 'State', // 0 !!!    OR ? state

//  s: speed_______________s:FAST s:SLOW =2
//  's:': 'speed',

//T: Time________________T:HIST T:NEW T:NOW T:OLD T:TOMORROW T:TODAY T:YESTERDAY =7
//  'T:': 'Time', //  1  !!!  Yesterday

//U: Unknown_____________=0
//  'U:': 'Unknown', //  ?  Unknown

//u: unknown_____________=0
//  'u:': 'unknown', //  ?  Unknown

//  V: Valuable____________V:HIGH V:LOL V:LOW V:MID =4
//  'V:': 'Valuable', //  Valuable

//  v: ValueLess___________=0
//  'v:': 'ValueLess', //  Valuable

//  X:  X or Yes___________X:ALLOW X:ASK X:BLOCKED X:GRANT X:MAYBE X:NO X:NOT X:VALID X:YES =9
//  'X:': ' X or Yes', //  Not known  MUST KNOW !!!

// Y: ____________________=0
//  'Y:': '',

//  Z: Z?__________________Z:ZEN Z:ZACHRA =2
//  'Z:': 'Z?',

}

///  Instance of KeyWords class.
var kw = new KeyWords();

///  if needed presentation function.
void renderKeyWords() {}
