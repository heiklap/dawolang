// Copyright (c) 2017, Heikki K Lappalainen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
///  Dawolang version 0.0.2  1.10.2018

import 'package:dawolang/dawolang.dart';

main() {
  var awesomeDawolang = new AwesomeDawolang();
  buf.writeln(':buf: -->>-->>   dawolang_example.dart starting. -->>-->> ');
  print('awesomeDawolang:: ${awesomeDawolang.isAwesome}');

  ///  Putting LexiconBase in shape
  lb.build(':dawolang_example:');

  print(':dl-ex:     * * *     WORD-GALLERY    * * * ');
  int count = 0;
  for (var x = 0; x < lb.wordList.length; x++) {
    print(lb.wordList[x]);
    count++;
    if (count == 2) {
      count = 0;
      print(' ');
    }
  }
  print(' :dl-ex:      * * *     WORD-GALLERY    * * *  done \n');

  print('-:dl-ex: ------------------------------------------------------ ');
  print('       * * *     COMMAND GROUPS    * * * ');
  lb.commandM.forEach((k, v) {
    print('$k, $v');
  });
  print('-:dl-ex: --------------------------------- done -------------- \n');

  an.analyzeStrS(
      'We :CAN be :SURE that :STUFF will :GO in :SCHEDULE', lb.wordList);
  an.analyzeStrS(':PHOTO do :NOT cause :ANY :PROBLEM; to :YOU', lb.wordList);

  an.analyzeStrS(':TO further :DEVELOPMENT of :THINGS :CALL :US ', lb.wordList);
  an.analyzeStrS(
      ':ALLOW :US :TO :SOLVE :ALL :PROBLEM s in this magtter', lb.wordList);

  an.analyzeStrS(':ONE more :WEEK :WILL :DO', lb.wordList);
  an.analyzeStrS(
      ':YOU in :NEW :ROLE gives :MORE :VALUE :TO :THIS :PROJECT', lb.wordList);

  an.analyzeStrS(':ANY :WILL :DO', lb.wordList);
  an.analyzeStrS(':ANSWER :IS :NO', lb.wordList);
  print('---------------  an:weightString  --------------------------------');
  //  using list_tools library
  print(an.weightString(
      ':TO further :DEVELOPMENT of :THINGS :CALL :US ', lb.wordList));
  print(an.weightString(
      ':ALLOW :US :TO :SOLVE :ALL :PROBLEM s in this magtter', lb.wordList));

  print('---------------  an:weightString  done ---------------------------');

  ///  Employing library showRoom
  sr.showWords(lb.wordList);
  sr.showCommands(lb.commandM);
  sr.showCombination(lb.wordList, lb.commandM);

  buf.writeln(':buf: --<<--<<   dawolang_example.dart closing. --<<--<< ');
  print('-----------  content of StringBuffer, buf:   ----------------------');

  print(buf);
}
