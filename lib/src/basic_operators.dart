
import 'dart:core';

import "box.dart";
import "port.dart";
import 'statement.dart';


class Add extends Box {
  InPort in0;
  InPort in1;
  OutPort out;

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
  InPort in0;
  InPort in1;
  OutPort out;

  Subtract(Statement owner) : super(owner) {
    this.boxName = 'subtract';
    in0 = new InPort(this, "in0");
    in1 = new InPort(this, "in1");
    out = new OutPort(this, "out");
    addPort(in0);
    addPort(in1);
    addPort(out);
  }

}