

import "dart:core"
import "port.dart"

class InvalidPortPairException extends Exception {

  InvalidPortPairException() : Exception() {}

}

class Connection {
  var ports = [];

  Connection(var connectorA, var connectorB) {
    if ((connectorA is OutPort and connectorB is OutPort) or 
        (connectorA is InPort  and connectorB is InPort)) {
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