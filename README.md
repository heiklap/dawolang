# dawolang  0.1.0

* Migrated to null safety
* Small, literal word-based message and command language, that eventually grows big, but stays always grateful to dartlang, it's little brother.
* Helps in standardizing words, that are used in messages, and classifying them to groups.
* Needed: Rules for forming and handling a sentence.
* Question: Method to give ready sentence to action-handler.
* HERE:  Updated to be Dart 2.0.0 compatible.
*   deleting some accidentally added technical big folders in github.
* NEXT: Handler for non-tracked words in incoming text.

* Watch dawolang: LICENSE file.
* Github: https://github.com/heiklap/dawolang
* Blog:  https://dawopack.blogspot.fi/search/label/dawolang 

* I am needing dawolang in dawo / connector message analyzing. That is why.
## Usage

A simple usage example:
Version 0.1.0  prints it's data and analyzes and modifies simple String.

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
      //  Output::EXTRACTED::  :STUFF :GO 

      an.analyzeStrS(':TO further :DEVELOPMENT of :THINGS :CALL :US ', lb.wordList);
      //  Output:  :EXTRACTED::  :TO :DEVELOPMENT :US 

      an.analyzeStrS(':ONE more :WEEK :WILL :DO', lb.wordList);
      //  Output: :EXTRACTED::  :ONE :DO 
      an.analyzeStrS(':YOU in :NEW :ROLE gives :MORE :VALUE :TO :THIS :PROJECT', lb.wordList);
      //  Output:  EXTRACTED::  :NEW :ROLE :VALUE :TO 
      an.analyzeStrS(':ANY :WILL :DO', lb.wordList);
      an.analyzeStrS(':ANSWER :IS :NO', lb.wordList);
      //  Output:  :EXTRACTED::  :ANSWER :NO 
      
      print('---------------  an:weightString  --------------------------------');
      print(an.weightString(':TO further :DEVELOPMENT of :THINGS :CALL :US ', lb.wordList));
      //  Output:  :EXTRACTED::  :TO :DEVELOPMENT :US 
      
      print(an.weightString(':ALLOW :US :TO :SOLVE :ALL :PROBLEM s in this matter', lb.wordList));
      //  Output:  :EXTRACTED::  :ALLOW :US :TO :ALL :PROBLEM s 
       print('---------------  an:weightString  done ---------------------------');

      sr.showWords(lb.wordList);
      sr.showCommands(lb.commandM);
      sr.showCombination(lb.wordList, lb.commandM);
    }
##Command groups
       * * *     COMMAND GROUPS    * * * 
     A:  :: Area
     a:  :: Activity
     B:  :: Boost??
     C:  :: Command
     c:  :: command
     D:  :: Data
     E:  :: Effort
     F:  :: Functionality
     G:  :: Gear
     H:  :: Human
     I:  :: Info
     J:  :: Joint
     K:  :: Kind
     L:  :: Lang
     M:  :: Message
     N:  :: Navigate
     O:  :: Order
     #:  :: ## Dawo-object ##
     €:  :: Coding
     P:  :: Phase
     Q:  :: Quest
     q:  :: quantity
     R:  :: Resource
     Rx:  :: Resource_special
     ?:  :: ?                 
     &:  :: &                 
     S:  :: State
     s:  :: speed
     T:  :: Time
     U:  :: Unknown
     u:  :: unknown
     V:  :: Valuable
     v:  :: ValueLess
     X:  ::  X or Yes
     Y:  :: 
     Z:  :: Z?
## Output combined:

    A: Area________________A:GLOBAL A:INNER A:LOCAL A:OUTER A:WAY =5
    a: Activity____________a:STAND a:TRANSPORT =2
    B: Boost??_____________B:HOORAY =1
    C: Command_____________C:CHECK-IN C:CUT C:DO C:FIND C:GEAR C:GRAB C:GO C:HIDE C:IGNORE C:LOCK C:ORDER C:OPEN C:PLAY C:RELAY C:RULE =15
    c: command_____________c:TEST c:TODO c:USE c:WAIT c:WAKE-UP-SLEEPY-HEAD c:WAKE =6
    D: Data________________D:BUS D:FURY D:PHOTO D:SPLIT D:STUFF =5
    E: Effort______________E:ANSWER E:CONQUER E:DEVELOPMENT E:GOAL E:PLAN E:TRY =6
    F: Functionality_______=0
    G: Gear________________G:IDEA G:SHAPE G:STANCE G:VISION =4
    H: Human_______________H:ADM H:GROUP H:KING H:SELF H:STAFF H:TEAM H:X-MEN =7
    I: Info________________I:EXAMPLE I:GUIDE I:HELP I:HINT I:INFO I:MAP I:NOTE =7
    J: Joint_______________J:JOIN J:SHARE =2
    K: Kind________________K:KIND =1
    L: Lang________________L:MACRO L:RECORD L:TALK =3
    M: Message_____________M:MESSAGE M:PING =2
    N: Navigate____________N:BACK N:DISTANCE N:DOWN N:FORWARD N:IN N:OUT N:ROUTE N:TO N:UP =9
    O: Order_______________O:FIRST O:LAST O:NEXT O:PREVIOUS O:SECOND =5
    #: ## Dawo-object ##___#:BATON #:LANG #:MILL #:PLACARD #:VALUE =5
    €: Coding______________€:CODE €:INSTANCE =2
    P: Phase_______________P:RUN P:START P:STOP =3
    Q: Quest_______________Q:HOW-TO Q:QUEST =2
    q: quantity____________q:ANY q:EMPTY q:HOW-MANY q:HOW-MUCH q:HOW-LONG q:ONLY q:ONE q:QUARTER =8
    R: Resource____________R:AREA R:USED R:USAGE =3
    Rx: Resource_special____=0
    ?: ?                 __?:CLIENT ?:FOR ?:NAME ?:QUIET ?:SECRET =5
    &: &                 __=0
    S: State_______________S:ABLE S:CLOSED S:NOT-USED S:OFF S:ON S:OPEN S:PROBLEM S:READY S:ROLE =9
    s: speed_______________s:FAST s:SLOW =2
    T: Time________________T:HIST T:NEW T:NOW T:OLD T:TOMORROW T:TODAY T:YESTERDAY =7
    U: Unknown_____________=0
    u: unknown_____________=0
    V: Valuable____________V:HIGH V:LOL V:LOW V:MID =4
    v: ValueLess___________=0
    X:  X or Yes___________X:ALLOW X:ASK X:BLOCKED X:GRANT X:MAYBE X:NO X:NOT X:VALID X:YES =9
    Y: ____________________=0
    Z: Z?__________________Z:ZEN Z:ZACHRA =2
    
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

[tracker]: https://github.com/heiklap/dawolang/issues
