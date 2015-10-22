

import "connection.dart";
import 'box.dart';

class Port {
  Box owner;
  String _name;
  get name => this._name;
  List<Connection> connections = [];

  Port(this.owner, this._name) {}

  void connect(Port con) {
    var c = new Connection(this, con);
    connections.add(c);
    con.connections.add(c);
  }
  
  void disconnect(Connection con) {
    var targetPort = con.ports[0] == this ? con.ports[1] : con.ports[0];
    targetPort.remove(con);
    connections.remove(con);
  }

  String toString() {
    var s = '';
    s += '${this.name} : connections : [';

    for (Connection c in connections) {
      var targetPort = c.ports[0] == this ? c.ports[1] : c.ports[0];
      s += '${targetPort.owner.boxName}(id=${targetPort.owner.id}).${targetPort.name}';
      if (c != connections.last) {
        s += ', ';
      }
    }
    s += ']';
    return s;
  }

}


class InPort extends Port {

  InPort(Box owner, String name) : super(owner, name) {}

}


class OutPort extends Port {
  
  OutPort(Box owner, String name) : super(owner, name) {}

}