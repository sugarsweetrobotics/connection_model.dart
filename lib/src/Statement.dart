

library connection_model.statement;

import 'dart:core';
import 'box.dart';
import 'port.dart';

class Statement extends Box {
  List<Box> boxes = [];
  InPort previous;
  OutPort next;

  Statement({Statement owner : null}) : super(owner) {
    this.boxName = 'statement';
    previous = new InPort(this, 'previous');
    next = new OutPort(this, 'next');
    addPort(previous);
    addPort(next);
  }

  String toString() {
    var s = "---statement(${boxName})(id=${id})----\n";
    for (Box box in boxes) {
      s += box.toString() + '\n';
    }
    return s;
  }
}