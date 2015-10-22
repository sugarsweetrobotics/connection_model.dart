
import "dart:core";

import "connector.dart";
import "port.dart";


class SameNamePortException extends Exception {
  SameNamePortException() : Exception() {}
}

class Box {
  var _inports = [];
  var _outports = [];

  Box() { }

  InPort inport(String name) {
    for (InPort p in _inports) {
      if (p.name == name) {
        return p;
      }
    }
    return null;
  }

  OutPort outport(String name) {
    for (OutPort p in _outports) {
      if (p.name == name) {
        return p;
      }
    }
    return null;
  }

  void _addPort(Port port) {
    if (port is InPort) {
      for (InPort p in _inports) {
        if (p.name == port.name) {
	  throw new SameNamePortException();
        }
      }
      _inports.add(port);
    } else if (port is OutPort) {
      for (OutPort p in _outports) {
        if (p.name == port.name) {
	  throw new SameNamePortException();
        }
      }
      _outports.add(port);
    } else {
    // Error
    }
  }

  void _delPort(Port port) {
    _inports.remove(port);
    _outports.remove(port);
  }
};