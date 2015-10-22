

import "connection.dart"

class Port {

  String _name;
  get name => this._name;
  var connectionList = [];

  Port(this._name) {}

  void connect(Port con) {
    connectionList.add(new Connection(this, con);  
  }
  
  void disconnect(Connection con) {
    connectionList.remove(con);
  }

};


class InPort extends Port {

  InPort() : Port() {}

};


class OutPort extends Port {
  
  OutPort() : Port() {}

};