
library connection_model.application;
import 'statement.dart';


class Application {
  var statementList = [];


  Application() {}

  String toString() {
    var divider = '---- application owning statement -------\n';
    var r = '';
    for(Statement s in statementList) {
      r += divider;
      r += s.toString() + '\n';
    }
    r += divider;
    return r;
  }
}