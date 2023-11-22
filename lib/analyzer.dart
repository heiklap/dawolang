// Copyright (c) 2017, Heikki K Lappalainen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

///*      version: 0.2.0   updated:  2022.4.3
/// * Analyzer finds special words that exist in #lexicon word list.
/// * Words are classified with: V: R: aso. markings to special groups.
/// ' Words beginning with same letter are inside same list-item.

library analyzer;

import 'base_lb.dart';
//  unused now:  import 'lexicon_base.dart';
import 'list_tools.dart';

///  Finds words that are in lexicon word list.
class Analyzer {
  bool _pB = false; //  To control printing in flowC method.

  ///  Analyze long String that can contain  many #command #word's.
  ///  TODO  change word: _wordList TO  _wordBank
  String analyzeStrS(String _anStr, List<String> _wordList) {
    //  print('-->>-->>-- :dawolang: analyze-Strings  -->>-->>-- ');
    List<String> retL = [];
    retL.add(_anStr);
    //  assume we check String against other
    String _extractS = ' *emptyAtBegin*';
    String _t = '';
    //  String _t was meant for temporary modifying.  To avoid unused;
    _t;
    StringBuffer buf = new StringBuffer();
    buf.write(':an:buf:  ');
    // NULL safety     List<String> _analyzeL = new List();
    List<String> _analyzeL = [];
    //  Collect to String ONLY #command words from String _aS
    _analyzeL.addAll(_anStr.split(' '));
    //  print(sL);
    //  print(sL.length);
    for (var x in _analyzeL) {
      //  Using list_tools library
      if (lt.countStrInList(_wordList, x) > 0) {
        String word = x;
        //  Meant for more complicated use-cases. To avoid unused:
        word;
        String wordLengthS = x.length.toString();
        //  Meant for more complicated use-cases. To avoid unused:
        wordLengthS;
        //  print('W: $word  L: $wordLengthS');
        buf.write(x);
        buf.write(' ');
      }
    }
    buf.write(' :done:');
    //  TODO  From where get data to:  extracted ??
    //  it is empty!!

    _extractS = buf.toString();

    String _retS = '';
    //  TODO  Output! Where? '..:debug:dawolang:print:.:connector;opJoin:...');
    retL.add(':an:aStr: :EXTRACTED::');
    retL.add(buf.toString()); //  for future use
    String returnString = (':an:aStr:: $_anStr  :EXTRACTED::  $_extractS ');
    print(':an:aStr:: $_anStr  :EXTRACTED::  $_extractS ');
    //  print(':EXTRACTED::  $_retS ');
    //  print('--<<--<<-- :dawolang: analyze-Strings  done--<<--<<-- \n ');
    //  TODO  PLAN:  Make this return Map<String, String>
    Map<String, String> _retMap = {
      'inStr': '',
      'rule': '',
      'com': '',
      'outStr': '',
    };
    //  When in need of more complicated return value, use map.toString.
    //  Just to name it here to avoid unused.
    _retMap;
    _retS = returnString;
    return _retS; //  Might be many words in this String.
  } //  -----  analyzeStrS

  ///  Same as above, but with no prints.
  String weightString(String _aS, List<String> _wordList) {
    String _retS = '';
    String _t = '';
    //  String _t was meant for temporary modifying.  To avoid unused;
    _t;
    StringBuffer buf = new StringBuffer();
    //  NULL Safety     List<String> sL = new List();
    List<String> sL = [];
    //  Collect to String ONLY #command words from String _aS
    sL.addAll(_aS.split(' '));
    for (var x in sL) {
      if (lt.countStrInList(_wordList, x) > 0) {
        //  String word = x;
        //  String wordLengthS = x.length.toString();
        buf.write(x);
        buf.write(' ');
      }
    }
    _retS = buf.toString();
    return _retS; //  Might be many words in this String.
  }

  ///  Pasting flowC method and flowS function from dawo.
  ///  Calling print/print-to-buffer function from base_lib.
  ///  Getting local variables; Actor and Buffer right.
  ///  Changing to use local -
  void flowC(String msg, bool p) {
    //  Use false _pB when prevent printing::
    _pB;

    ///  Call flowServe with #LOCAL variables.
    //  flowServe is in base_lb.dart.
    flwSrv(':con:', buf, msg, p);
  }
} //  -----  analyzer class

///  Long name:   var analyzer = new Analyzer();
///  Short name:  Prefer short name for instance.
var an = new Analyzer();
