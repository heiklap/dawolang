// Copyright (c) 2017, Heikki K Lappalainen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

///  * Just an idea now, but:  Eventually dawolang analyzer needs some rules.
///  * Needed: Rules for forming and handling a sentence and word.
///  * Question: Method to give ready sentence to action-handler.
///  * NEXT: Handler for non-tracked words in incoming text.

library rules;

///  Be ready to add more efficient behaviour in dawolang.
class Rules {
  String name = 'Rules in dawolang';

  ///  Give information about this library.
  String info() {
    String infoS = 'There are no rules yet in dawolang';
    return infoS;
  }

  ///  Incoming sentence rules.
  void incomingRule() {}

  ///  Form for sentence and word.
  void formRule() {}

  ///  If word has many parts and so.
  void handlingWordRule() {}

  ///  Rules for command words.
  void commandRule() {}

  ///  If needed special notation of unused words,
  void unusedWordsRule() {}

  ///  Some extra rules.
  void extra() {}
}

///  Instance of rules library
var rules = new Rules();
