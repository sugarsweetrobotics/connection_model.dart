
import 'dart:core';

import "box.dart";
import "port.dart";
import 'statement.dart';


class Add extends Box {
  var in0;
  var in1;
  var out;

  Add(Statement owner) : super(owner) {
    this.boxName = 'add';
    in0 = new InPort(this, "in0");
    in1 = new InPort(this, "in1");
    out = new OutPort(this, "out");
    addPort(in0);
    addPort(in1);
    addPort(out);
  }

}



class Subtract extends Box {

  Subtract(Statement owner) : super(owner) {
    this.boxName = 'subtract';
  }

}