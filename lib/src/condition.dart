library connection_model.condition;


import 'box.dart';
import 'statement.dart';
import 'port.dart';


class Equals extends Box {
  var condition;
  var in0;
  var in1;
  Equals(Statement owner) : super(owner) {
    this.boxName = 'equals';
    condition = new OutPort(this, 'condition');
    in0 = new InPort(this, 'value0');
    in1 = new InPort(this, 'value2');
    addPort(condition);
    addPort(in0);
    addPort(in1);
  }
}

class TrueCondition extends Box {
  var condition;
  TrueCondition(Statement owner) : super(owner) {
    this.boxName = 'alwaysTrue';
    condition = new OutPort(this, 'condition');
    addPort(condition);
  }

}