library connection_model.variable;

import 'box.dart';
import 'statement.dart';
import 'port.dart';

class SetVariable extends Box {
  String name;

  InPort in0;
  SetVariable(Statement owner, this.name) : super(owner) {
    this.boxName = 'set_variable"name=${name}"';
    in0 = new InPort(this, 'in0');
    addPort(in0);
  }

}

class GetVariable extends Box {
  String name;
  OutPort out;
  GetVariable(Statement owner, this.name) : super(owner) {
    this.boxName = 'get_variable"name=${name}"';
    out = new OutPort(this, 'out');
    addPort(out);
  }
}