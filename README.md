# dawolang

A library for Dart developers.
* Small, literal word-based message and command language, that eventually grows big, but stays always grateful to dartlang, it's little brother.
* Helps in standardizing words, that are used in messages, and classifying them to groups.
* Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:
Version 0.0.1 prints it's data and analyzes and modifies simple String.

import 'package:dawolang/dawolang.dart';

    void main() {
      var awesome = new Awesome();

      ///  Fill lists and maps with data.
      lb.build(':dawolang_example:');
      lb.wordList.forEach(print);
      print('------------------------------------------------------- \n');
      print('       * * *     COMMAND GROUPS    * * * ');
      lb.commandM.forEach((k, v) {
        print('$k, $v');
      });
      print('------------------------------------------------------- \n');

      an.analyzeStrS('We :CAN be :SURE that :STUFF will :GO in :SCHEDULE', lb.wordList);
      an.analyzeStrS(':PHOTO do :NOT cause :ANY :PROBLEM; to :YOU', lb.wordList);

      an.analyzeStrS(':TO further :DEVELOPMENT of :THINGS :CALL :US ', lb.wordList);
      an.analyzeStrS(':ALLOW :US :TO :SOLVE :ALL :PROBLEM s in this matter', lb.wordList);

      an.analyzeStrS(':ONE more :WEEK :WILL :DO', lb.wordList);
      an.analyzeStrS(':YOU in :NEW :ROLE gives :MORE :VALUE :TO :THIS :PROJECT', lb.wordList);

      an.analyzeStrS(':ANY :WILL :DO', lb.wordList);
      an.analyzeStrS(':ANSWER :IS :NO', lb.wordList);
      print('---------------  wg:wgString  ----------------------------------');

      print(an.weightString(':TO further :DEVELOPMENT of :THINGS :CALL :US ', lb.wordList));
      print(an.weightString(':ALLOW :US :TO :SOLVE :ALL :PROBLEM s in this matter', lb.wordList));

      print('---------------  wg:wgString  done ------------------------------');

      sr.showWords(lb.wordList);
      sr.showCommands(lb.commandM);
      sr.showCombination(lb.wordList, lb.commandM);
    }
##Output 
       * * *     COMMAND GROUPS    * * * 
    A:, Area
    B:, Boost??
    C:, Command
    D:, Data
    E:, Effort
    F:, Functionality
    G:, Group
    H:, Human
    I:, Info
    J:, 
    K:, Key
    L:, Lang
    M:, 
    N:, No special term
    O:, Object
    #:, Dawo-object
    P:, 
    Q:, Quest
    R:, Resource
    Rx:, Resource_special
    S:, Specification ??  
    T:, Time
    U:, 
    V:, 
    X:, 
    Y:, 
    Z:, 
And:
    
    WG  - - -      WORD-GALLERY    - - -  
    :?:ABLE :ADM :ANSWER :ANY ?R:AREA P:ALLOW P:ASK
    :BATON P:BLOCKED D:BUS
    
    :C:CHECK-IN :CLIENT ?:CODE ?:CONQUER ?:CUT
    :DEVELOPMENT :DISTANCE C:DO ?:DOWN
     
    :EXAMPLE :EMPTY #:EFFORT !!?:EVENT
    :FAST :FOR ?D:FORM C:FIND ?:FUNCTION  D:FURY
     
    :A:GLOBAL ?R:GOAL C:GEAR :GRANT ?:GRABBED H:GROUP C:GO :GUIDE
    :?I:HELP C:HIDE ?:HINT ?:HIST V:HIGH Q:HOW-TO ?B:HOORAY 
 
    :HOW-MANY :HOW-MUCH :HOW-LONG
    ?:IDEA C:IGNORE :IN I:INFO O:INSTANCE A:INNER
 
    G:JOIN
    :KIND H:KING ?I:KNOW
 
    :#LANG A:LOCAL V:LOL V:LOW ?D?C?:LOAD C:LOCK
    ?:MAP L:MACRO #?MAYBE #:MILL
 
     ?:NAME #:?NEW ?:NEXT ?:NOT-USED I:NOTE L:NOT
    C:ORDER :ON ?:ONLY ?:ONE
 
    ?:OFF
    C:OPEN :OUT A:OUTER
 
    PLACARD ?:PROBLEM C:PING ?:PLAN C:PLAY D:PHOTO
    :QUARTER I:QUIDE :QUIET Q#:QUEST ?C:QUESTION
 
    :READY C:RELAY ?:ROLE L:RECORD C:RULE ?:ROUTE 
    :SECRET H:SELF ?:SHAPING ?:SHARE D:SPLIT H:STAFF ??:STAN? D:STUFF ??:STANCE
 
    H:TEAM C:TEST ?:TRANSPORT #:TIME :TO C:TODO 
    ?:UP C:USE ?:USED ?:USAGE
 
    V #:VALUE ?:VISION ?:VALID
    :WAIT C:WAKE-UP-SLEEPY-HEAD C:WAKE A:WAY
 
    H:X-MEN
    C:YES T:YESTERDAY
 
    ?:ZEN
    ?:ZACHRA
 
       * * *     WORD-GALLERY    * * * 



## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
