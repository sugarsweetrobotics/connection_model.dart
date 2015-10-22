


import "box.dart";
import "port.dart";


class Add extends Box {

  Add() : Box() {
    _addPort(new InPort("in0");
    _addPort(new InPort("in1");
    _addPort(new OutPort("out");
  }

};



class Subtract extends Box {

  Subtract() : Box() {}

};