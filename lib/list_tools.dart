// Copyright (c) 2017, Heikki K Lappalainen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

///  List-tools keeps basic List helper tools.
///  This is independent and do not import any of dawolang files.

library list_tools;

///  String manipulation tools.
class ListTools {
  ///  Return List of items, where #String exist. Orig. from dawo-tools.
  List<String> StrInList(List<String> _l, String _s) {
    List<String> _queryL = new List();
    for (var x = 0; x < _l.length; x++) {
      if (_l[x].indexOf(_s) > -1) {
        _queryL.add(_l[x]);
      }
    }
    return _queryL; // 0-length check in the receiver side.
  }

  ///  Return >0 if String is in the List.
  int countStrInList(List<String> _l, String _s) {
    int _c = 0;
    for (var x = 0; x < _l.length; x++) {
      if (_l[x].indexOf(_s) > -1) {
        _c++;
      }
    }
    return _c; // 0-length check in the receiver side.
  }

  ///  Printing list in many, _w, rows.  With line-feed after 2 rows.
  void linePrintList(List<String> _l, String lName, int _w) {
    int _length = _l.length;
    int _rowCount = 0;
    StringBuffer buf = new StringBuffer();
    StringBuffer rowBuf = new StringBuffer();
    int y = 0;
    for (var x = 0; x < _l.length; x++) {
      y++;
      rowBuf.write(_l[x]);
      rowBuf.write(' ');
      if (y >= _w) {
        //   || (x == _length)
        buf.write(rowBuf);
        buf.writeln(''); //  line-feed, suppose.
        rowBuf.clear(); //  empty buffer
        y = 0;
      }
    }
    print('------------ linePrintList  Name: $lName -----------------');
    print(buf);
    print('------------ linePrintList done  -------------------------\n');
  }

  ///  Finds String in another String.
  String findStrInStr(findS, origS) {
    String _s = '';
    if (origS.indexOf(findS) > -1) {
      _s = origS;
    }
    return _s;
  }

  ///  Find All Strings s1 that are in List l.
  ///  TODO  Usage:
  String findAllStringsInList(String sF, List<String> _l) {
    int _count = 0;
    StringBuffer buf = new StringBuffer();
    for (var x in _l) {
      String _s = findStrInStr(sF, x);
      if (_s.length > 0) {
        _count++;
        buf.write('$_s '); //  This should add ' ' to String
      }
    }
    String countS = _count.toString();
    buf.write('=$countS');
    return buf.toString();
  }

  ///  Not used.  Find String
  String fs(String _s, String caller, List<String> _wordList) {
    String rMsg = '------';
    if (countStrInList(_wordList, _s) > 0) {
      rMsg = _s;
    }
    return rMsg;
  }

  ///  Reserving this word here.
  void handleCommand() {}
} //  -----  class ListTools

var lt = new ListTools();
