
import 'dart:core';
import 'lib/connection.dart';



void main() {
  ConnectionModel app = new ConnectionModel();

  var statementBox = new StatementBox();
  var addBox = new Add();
  var literal4 = new IntegerLiteral(4);
  var literal3 = new IntegerLiteral(3);
  var printBox = new Print();
  addBox.inport("in0").connect(literal4.outport("out"));
  addBox.inport("in1").connect(literal4.outport("out"));
  printBox.inport("in").connect(addBox.outport("out"));





