

import "dart:core";
import "port.dart";

class InvalidPortPairException implements Exception {

  final String msg;
  const InvalidPortPairException();

}

class Connection {

  List<Port> ports = [];

  Connection(var connectorA, var connectorB) {
    if ((connectorA is OutPort && connectorB is OutPort) ||
        (connectorA is InPort  && connectorB is InPort)) {
      // Error throw Exception
      throw new InvalidPortPairException();
    }

    if (connectorA is InPort) {
      ports.add(connectorA);
      ports.add(connectorB);
    } else {
      ports.add(connectorB);
      ports.add(connectorA);
    }
  }
}