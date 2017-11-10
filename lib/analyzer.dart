// Copyright (c) 2017, Heikki K Lappalainen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// * Analyzer finds special words that exist in #lexicon word list.
/// * Words are classified with: V: R: aso. markings to special groups.

library analyzer;


import 'lexicon_base.dart';
import 'list_tools.dart';



///
class Analyzer{

  ///  Analyze long String that can contain  many #command #word's.
  String analyzeStrS(String _aS, List<String> _wordList) {
    print('-->>-->>-- :dawolang: analyze-Strings  -->>-->>-- ');
    String _retS = '';
    String _t = '';
    StringBuffer buf = new StringBuffer();
    List<String> sL = new List();
    //  Collect to String ONLY #command words from String _aS
    sL.addAll(_aS.split(' '));
    print(sL);
    print(sL.length);
    for (var x in sL) {
      //  Using list_tools library
      if (lt.countStrInList(_wordList, x) > 0) {
        String word = x;
        String wordLengthS = x.length.toString();
        print('W: $word  L: $wordLengthS');
        buf.write(x);
        buf.write(' ');
      }
    }
    _retS = buf.toString();
    print(':EXTRACTED::  $_retS ');
    print('--<<--<<-- :dawolang: analyze-Strings  done--<<--<<-- \n');
    return _retS; //  Might be many words in this String.
  }


  ///  Same as above, but with no prints.
  String weightString(String _aS, List<String> _wordList ) {
    String _retS = '';
    String _t = '';
    StringBuffer buf = new StringBuffer();
    List<String> sL = new List();
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

}  //  -----  analyzer class

//  var analyzer = new Analyzer();
//  Prefer short name for instance.
var an = new Analyzer();

