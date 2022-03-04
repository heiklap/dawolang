// Copyright (c) 2017, Heikki K Lappalainen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// * Shaping structure of word-library.

library word;

///  Giving some visibility for #word
String wordMotto = 'Word library for handling dawolang words.';

///  Word base class.
class WordBase {
  String name = '';

  String ab = '';

  void behave() {}

  void act() {}

  //  Constructor
  WordBase();
}

///
class Word extends WordBase {
  ///  Name of this library class.
  String name = 'Word Library';

  ///  Short name.
  String ab = 'WL';

  ///  Behaviour rules of word.
  void behave() {}

  ///  Act method for word.
  void act() {}

  ///  constructor
  Word(this.name, ab, Function f);
}

///  Outer function, that is finally used inside class.
void wordRule() {
  //  code
}

///  Creating instance for test and presentation.
var wbTest = new Word('test', 'ab_test', wordRule);
