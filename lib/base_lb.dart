// Copyright (c) 2017, Heikki K Lappalainen. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// * dawolang common stuff.  hist:  11.11.2017 by hkl

library base_lb;

import 'src/dawolang_base.dart';

///  To collect flow-events count.
///  TODO  Hide upper level variables
int flowLangI = 0;

StringBuffer buf = new StringBuffer();

/// Do not look out unprofessionally and spam your code with print-clauses!
/// Instead use: flow !!
//  Actor and buf are not needed in parameter !!  They are get from Global
//  void flow(String actor, StringBuffer buf, String msg, bool pr)
///  DONE:  To avoid messing with buffer and actor HOORAY: used local fl().
///  local: fl calls this Flow()
void flwSrv(String actor, StringBuffer buf, String msg, bool pr) {
  ///  ********************************************************************
  ///  GETTING NOW  ACTOR AND BUFFER RIGHT, WHEN USED LOCAL fl()
  /// **********************************************************************
  //  TODO : is flow pushing empty rows to buffers?
  flowLangI++;
  String flowIS = flowLangI.toString();

  ///  Added opC: to flow-counter for easy search.
  String _flowIS = 'opC:$flowIS';
  String _version = dl.version;
  String header = ':dl:$_version:$pr:';
  String text = '$actor $header$_flowIS  $msg ';
  //  #debug  print(':flowServe:test:  $_msg $pr');
  if (pr) print(':flowServe:test:  $text');
  // DONE:  Now _buf comes from caller in parameters.
  buf.writeln('$text');
/*
  String _actor = actor;
  if (pr) print(msg);
  // DONE:  Now _buf comes from caller in parameters.
  //  Handle flow-counter, flowI
  flowI++;
  String flowIS = flowI.toString();
  ///  Added opC: to flow-counter for easy search.
  String _flowIS = 'opC:$flowIS';
  //  TODO  take extra \n away from message.
  buf.writeln('$_actor $_flowIS $msg');
  //  Code here.
  //  Form nice String (for print and/or buf) that describes ongoing operation.
  */
}
