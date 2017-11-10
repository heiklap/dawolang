// Copyright (c) 2017, Heikki K Lappalainen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

///  Lexicon_base keeps lists and Maps of words and command-groups,
///  for dawolang analyzing system.

library word_gallery;

import 'list_handler.dart';
import 'rules.dart';

//  NOT   Trying to handle this without a class
class LexiconBase {







  List<String> wordList = new List();

  ///  ? =  Do not know, what it should be.
  void build(String caller) {
    print('-->>-->>-- #dawolang  build   C:By: $caller  -->>-->>--');

    wordList.addAll([
      'S:ABLE H:ADM E:ANSWER q:ANY R:AREA X:ALLOW X:ASK',
      'N:BACK #:BATON X:BLOCKED D:BUS',
      'C:CHECK-IN ?:CLIENT S:CLOSED €:CODE E:CONQUER C:CUT',
      'E:DEVELOPMENT N:DISTANCE C:DO N:DOWN',
      'I:EXAMPLE q:EMPTY #E:EFFORT !!?:EVENT',
      's:FAST ?:FOR ?D:FORM C:FIND O:FIRST N:FORWARD ?F:FUNCTION D:FURY',
      'A:GLOBAL E:GOAL C:GEAR X:GRANT C:GRAB H:GROUP C:GO I:GUIDE',
      'I:HELP C:HIDE I:HINT T:HIST V:HIGH Q:HOW-TO B:HOORAY',
      'q:HOW-MANY q:HOW-MUCH q:HOW-LONG',
      'G:IDEA C:IGNORE N:IN I:INFO €:INSTANCE A:INNER',
      'J:JOIN',
      '#KEY K:KIND H:KING ?I:KNOW',
      '#:LANG O:LAST A:LOCAL V:LOL V:LOW ?D?C:LOAD C:LOCK',
      '?q:MANY I:MAP L:MACRO X:MAYBE M:MESSAGE V:MID #:MILL',
      '?:NAME T:NEW O:NEXT S:NOT-USED X:NO I:NOTE X:NOT T:NOW',
      'T:OLD C:ORDER S:OFF S:ON q:ONLY q:ONE S:OPEN',
      'C:OPEN N:OUT A:OUTER',
      '#:PLACARD O:PREVIOUS S:PROBLEM M:PING E:PLAN C:PLAY D:PHOTO',
      'q:QUARTER ?:QUIET Q:QUEST ?C:QUESTION',
      'S:READY C:RELAY S:ROLE L:RECORD P:RUN C:RULE N:ROUTE',
      'O:SECOND ?:SECRET H:SELF G:SHAPE J:SHARE s:SLOW D:SPLIT H:STAFF a:STAND G:STANCE P:START P:STOP D:STUFF',
      'L:TALK H:TEAM c:TEST a:TRANSPORT #T:TIME N:TO T:TOMORROW T:TODAY c:TODO E:TRY',
      'N:UP c:USE R:USED R:USAGE',
      '#:VALUE G:VISION X:VALID',
      'c:WAIT c:WAKE-UP-SLEEPY-HEAD c:WAKE A:WAY',
      'H:X-MEN',
      'X:YES T:YESTERDAY',
      'Z:ZEN Z:ZACHRA'
    ]);

    // '', '', '', '', '', '', '', '', '', '', '', '',]);
    // '', '', '', '', '', '', '', '', '', '', '', '',]);
    // '', '', '', '', '', '', '', '', '', '', '', '',]);
  }

  ///  Most important are:  Command. Data, Human, Resource
  ///
  Map<String, String> commandM = {
    'A:': 'Area', //  GLOBAL INNER LOCAL  OUTER  WAY
    'a': 'Activity',
    'B:': 'Boost??', // :HOORAY
    'C:': 'Command', //  19
    'c:': 'command', //
    'D:': 'Data', //  BUS  FORM  FURY  SPLIT  STUFF
    'E:': 'Effort', //  ?   0
    'F:': 'Functionality', //  0
    'G:': 'Gear', //  Group  JOIN     GEAR!!!
    //  GROUP  KING  SELF  STAFF  TEAM  X-MEN
    'H:': 'Human', // ?? human / object like working entities.
    //  HELP  INFO  KNOW   NOTE  GUIDE
    'I:': 'Info', //  ? :GUIDE :INFO :KNOW :NOTE :HELP
    'J:': 'Joint', //  Joint ?   0   Job?
    'K:': 'Kind', //  Giving special access to some..   0
    'L:': 'Lang', //  ??  MACRO  NOT  RECORD
    'M:': 'Message',
    'N:': 'Navigate', //  0
    'O:': 'Order', //  0
    '#:': '## Dawo-object ##', // 6
    '€': 'Coding',
    'P:': 'Phase', //   Permission  ALLOW  ASK  BLOCKED
    'Q:': 'Quest', //  Quest / Question  1  HOW-TO
    'q': 'quantity',
    'R:': 'Resource', //  area  goal
    'Rx:': 'Resource_special',
    '?:': '?                 ',

    '&:': '&                 ',

    ///  Specification; giving some more information about entity.
    'S:': 'State', // 0 !!!    OR ? state
    's': 'speed',
    'T:': 'Time', //  1  !!!  Yesterday
    'U:': 'Unknown', //  ?  Unknown
    'u:': 'unknown', //  ?  Unknown
    'V:': 'Valuable', //  Valuable
    'v:': 'ValueLess', //  Valuable
    'X:': ' X or Yes', //  Not known  MUST KNOW !!!
    'Y:': '',
    'Z:': 'Z?',
  };

}  //  -----  class LexiconBase
///  Instance of #words# class.
var lb = new LexiconBase();