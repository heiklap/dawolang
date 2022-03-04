// Copyright (c) 2017, Heikki K Lappalainen. All rights reserved. Use of this source code
/// is governed by a BSD-style license that can be found in the LICENSE file.
///    version: 0.1.0   updated:  4.3.2022

/// * Showroom holds word-grouping and presentation methods for #dawolang.

library showroom;

import 'base_lb.dart';

//  import 'lexicon_base.dart';
import 'list_tools.dart';

///  A typedef, or function-type alias, gives a function type a name that you
///  can use when declaring fields and return types.
///  Because typedefs are simply aliases, they offer a way to check the type
///  of any function.
///  typedef Compare = int Function(Object a, Object b);
///  TODO  Typedef practicing.  Function type returning String
typedef DawolangPrint = String Function(String msg, String msg2);

///  Word manipulation and presentation.
class ShowRoom {
  ///  trying to keep these integers inside this class.
  int comWordsCount = 0;
  int allWordsCount = 0;
  int unknownWordsCount = 0;
  //  To control printing in flowC method.
  bool _pB = false;

  //  typedef void _DawolangPrint(String msg); // announced outside of class
  //  TODO  modify this to use TypeDef
  String dawolangPrint(String msg, String msg2) {
    String oneS = 'one';
    String twoS = 'two';
    String retFuncS(String a, b) {
      return ('a: $a  b: $b ');
    }

    if (_pB) print(':_dawolangPrint:C: $_pB  $msg');
    //  Must have a  return statement;
    return retFuncS(oneS, twoS);
  }

  ///  Combine words with commands.
  void showCombination(List<String> _wordList, Map<String, String> _commandM) {
    bool savePB = _pB;
    _pB = true;
    String combStr = ('#debug test dawolang #typedef');
    //  To avoid unused:
    combStr;
    _pB = savePB;

    print('       * * *     COMBINATION-GALLERY    * * * ');

    //-----------------------------------
    List<String> wordBunch = []; //  all
    List<String> unknownBunch = []; //  only: : at the beginning
    List<String> comBunch = []; //  : as second letter
    for (var y = 0; y < _wordList.length; y++) {
      wordBunch.addAll(_wordList[y].split(' '));
    }
    print('wordBunch:: ');
    print(wordBunch.length);
    //  print(wordBunch);
    lt.linePrintList(wordBunch, 'wordBunch', 9);

    for (var w = 0; w < wordBunch.length; w++) {
      //  Check for empty String or 1-length String
      //  print(wordBunch[w]);
      if (wordBunch[w].substring(1, 2) == ':') {
        //  ?:S  #:V  C:W
        comBunch.add(wordBunch[w]);
        //  #dartformat is funny here lol
        comWordsCount++;
      }
      ;
      //  TODO  in 2 groups  wordBunch, unknownBunch
      if (wordBunch[w].substring(0, 1) == '?') {
        //  ?:S  #:V  C:W
        unknownBunch.add(wordBunch[w]);
        unknownWordsCount++;
      }
    } //  -----  wordBunch.length

    String comWordsCountS = comWordsCount.toString();
    print('comBunch::Count: $comWordsCountS ');
    print(comBunch.length);
    //  print(comBunch);
    lt.linePrintList(comBunch, 'comBunch', 10);

    String unknownWordsCountS = unknownWordsCount.toString();
    print('unknownBunch:: Count: $unknownWordsCountS ');
    print(unknownBunch.length);
    //  print(unknownBunch);
    lt.linePrintList(unknownBunch, 'unKnownBunch', 7);

    //  TODO   NullSafety
    for (var x in _commandM.keys) {
      int wordCount = 0;
      //  pad value left to 20:
      String padS = '';
      //  hklTry   .toString()
      //  padS = _commandM[x].padRight(20, '_');
      //  NO   padS = _commandM[x].padRight(20, '_').toString();

      //   hklTry;   .toString()  in middle
      padS = _commandM[x].toString().padRight(20, '_');

      String findComS = lt.findAllStringsInList(x, comBunch);

      _commandM[x] = padS + findComS;
      //  hklTry  .toString()  nullSafe  OK
      String vS = _commandM[x].toString(); //  like:  F:  K:
      print('$x $vS');
      wordCount++;
      //  Just name it to avoid #unused::
      wordCount;
    }

    print('       * * *     COMBINATION-GALLERY done   * * * \n');
  } //  -----  showCombination()

  ///  Show them, jus in rows.
  void showCommands(Map<String, String> _commandM) {
    print('       * * *     COMMAND-GALLERY    * * * ');
    for (var x in _commandM.keys) {
      //  TODO  NullSafe  howTo
      //  String vS = _commandM[x];

      //  hklTry:  .toString   yep  NullSafe
      String vS = _commandM[x].toString();
      print(' $x  :: $vS');
    }
    print('       * * *     COMMAND-GALLERY  done  * * * \n');
  }

  ///  Simple listing of words.
  void showWords(List<String> _wordList) {
    print('\n       * * *     WORD-GALLERY    * * * ');
    int swCount = 0;
    for (var x = 0; x < _wordList.length; x++) {
      print(_wordList[x]);
      swCount++;
      if (swCount == 2) {
        swCount = 0;
        print(' ');
      }
    }
    print('       * * *     WORD-GALLERY  done  * * * \n');
  }

  ///  Pasting flowC method and flowS function from dawo.
  ///  Calling print/print-to-buffer function from base_lib.
  ///  Getting local variables; Actor and Buffer right.
  ///  Changing to use local -
  void flowC(String msg, bool p) {
    ///  Call flowServe ( in base_lb.dart ) with #LOCAL variables.
    flwSrv(':con:', buf, msg, p);
  }
} //  -----  class ShowRoom

///  Instance of ShowRoom class.
var sr = new ShowRoom();
