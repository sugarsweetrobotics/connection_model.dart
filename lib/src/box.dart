
import "dart:core";

//import "connector.dart";
import "port.dart";
import 'statement.dart';
import 'geometry.dart';

class SameNamePortException implements Exception {
  const SameNamePortException();
}

class Box {
  Point position = new Point(0,0);

  static int _id = 0;
  int id;
  List<InPort> _inports = [];
  List<OutPort> _outports = [];
  Statement _owner;
  String boxName = "plain_box";

  Box(this._owner) {
    if (_owner != null) {
      _owner.boxes.add(this);
    }
    this.id = _id;
    _id++;
  }

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

  void addPort(Port port) {
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

  void delPort(Port port) {
    _inports.remove(port);
    _outports.remove(port);
  }

  String toString() {
    var s = '${boxName}(id=${id}): {';
    s += 'InPort : {';
    for (InPort p in _inports) {
      s += p.toString();
      if (p != _inports.last) {
        s += ', ';
      }
    }
    s += '}, OutPort : {';
    for (OutPort p in _outports) {
      s += p.toString();
      if (p != _outports.last) {
        s += ', ';
      }
    }
    s += '}';
    s += '}';

    return s;
  }
}