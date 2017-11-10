// Copyright (c) 2017, Heikki K Lappalainen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// * Showroom holds presentation methods for #dawolang word-analyzer.


library showroom;


import 'lexicon_base.dart';
import 'list_tools.dart';



class ShowRoom{

  ///  trying to keep these integers inside this class.
  int comWordsCount = 0;
  int allWordsCount = 0;
  int unknownWordsCount = 0;

///
void showCombination(List<String> _wordList, Map<String, String> _commandM) {
  print('       * * *     COMBINATION-GALLERY    * * * ');
  int count = 0;
  //-----------------------------------
  List<String> wordBunch = [];  //  all
  List<String> unknownBunch = [];  //  only: : at the beginning
  List<String> comBunch = [];    //  : as second letter
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
    if (wordBunch[w].substring(1,2) == ':') {   //  ?:S  #:V  C:W
      comBunch.add(wordBunch[w]);
      comWordsCount++;
    };
    //  TODO  in 2 groups
    if (wordBunch[w].substring(0,1) == '?') {   //  ?:S  #:V  C:W
      unknownBunch.add(wordBunch[w]);
      unknownWordsCount++;
    }
  }  //  -----  wordBunch.length

  String comWordsCountS = comWordsCount.toString();
  print('comBunch::Count: $comWordsCountS ');
  print(comBunch.length);
  //  print(comBunch);
  lt.linePrintList(comBunch, 'comBunch', 10);

  String unknownWordsCountS = unknownWordsCount.toString();
  print('unknownBunch:: Count: $unknownWordsCountS ');
  print(unknownBunch.length);
  //  print(unknownBunch);
  lt.linePrintList(unknownBunch, 'unKnownBunch',  7);

  for (var x in _commandM.keys) {
    int wordCount = 0;
    //  pad value left to 20:
    String padS = _commandM[x].padRight(20, '_');
    String findComS = lt.findAllStringsInList( x, comBunch);

    _commandM[x] = padS + findComS;
    String vS = _commandM[x]; //  like:  F:  K:
    print('Command::  $x  :: $vS');
    count++;
  }
  print('       * * *     COMBINATION-GALLERY done   * * * \n');
}  //  -----  showCombination()


///
void showCommands(Map<String, String> _commandM) {
  print('       * * *     COMMAND-GALLERY    * * * ');
  for (var x in _commandM.keys) {
    String vS = _commandM[x];
    print(' $x  :: $vS');
  }
  print('       * * *     COMMAND-GALLERY  done  * * * \n');
}

///
void showWords(List<String> _wordList) {
  print('\n       * * *     WORD-GALLERY    * * * ');
  int count = 0;
  for (var x = 0; x < _wordList.length; x++) {
    print(_wordList[x]);
    count++;
    if (count == 2) {
      count = 0;
      print(' ');
    }
  }
  print('       * * *     WORD-GALLERY  done  * * * \n');
}

}  //  -----  class ShowRoom

var sr = new ShowRoom();
