// Copyright (c) 2017, Heikki K Lappalainen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.


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
