
library connection_model.application;
import 'statement.dart';


class Application {
  /// var statementList = [];
  Statement startState = new Statement();

  Application() {}

  static Statement nextStatement(Statement s) {
    if (s.next.connections.length == 0) {
      return null;
    }
    return s.next.connections[0].ports[0].owner == s ? s.next.connections[0].ports[1].owner : s.next.connections[0].ports[0].owner;
  }

  static void mapStatement(Statement s, var func) {
    if (s != null) {
      func(s);
      mapStatement(nextStatement(s), func);
    }
  }

  void iterStatement(var func) {
    mapStatement(nextStatement(this.startState), func);
  }

  String toString() {
    var divider = '---- application owning statement -------\n';
    var r = '';
    iterStatement((var s) => r += divider + s.toString() + '\n');
    r += divider;
    return r;
  }
}