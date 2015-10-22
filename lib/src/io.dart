

library connection_model.io;
import 'box.dart';
import 'statement.dart';
import 'port.dart';

class Print extends Box {
  InPort in0;
  Print(Statement owner) : super(owner) {
    this.boxName = 'print';
    in0 = new InPort(this, "in0");
    addPort(in0);
  }
}