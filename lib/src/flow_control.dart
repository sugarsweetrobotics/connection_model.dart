library connection_model.flow_control;


import 'box.dart';
import 'port.dart';
import 'statement.dart';

class If extends Box {
  var condition;
  var yes;
  var no;
  If(Statement owner) : super(owner) {
    this.boxName = "if";
    condition = new InPort(this, 'condition');
    yes = new OutPort(this, 'yes');
    no  =new OutPort(this, 'no');
    addPort(condition);
    addPort(yes);
    addPort(no);
  }
}


class While extends Box {
  var condition;
  var loop;
  While(Statement owner) : super(owner) {
    this.boxName = "while";
    condition = new InPort(this, 'condition');
    loop = new OutPort(this, 'loop');
    addPort(condition);
    addPort(loop);
  }
}