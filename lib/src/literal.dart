


library connection.literal;
import 'box.dart';
import 'statement.dart';
import 'port.dart';

class IntegerLiteral extends Box {
  int _value;
  OutPort out;
  get value => _value;
  IntegerLiteral(Statement owner, this._value) : super(owner) {
    this.boxName = 'intliteral"value=${_value}"';
    out = new OutPort(this, "out");
    addPort(out);
  }

}

class StringLiteral extends Box {
  String _value;
  OutPort out;
  get value => _value;

  StringLiteral(Statement owner, this._value) : super(owner) {
    this.boxName = 'stringliteral"value="${_value}""';
    out = new OutPort(this, "out");
    addPort(out);
  }
}