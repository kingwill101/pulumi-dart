// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents two-dimensional positions.
class EnterpriseCrmEventbusProtoCoordinate {
  final pulumi.Input<int?>? x;
  final pulumi.Input<int?>? y;

  /// Creates a new [EnterpriseCrmEventbusProtoCoordinate].
  /// [x] Optional.
  /// [y] Optional.
  const EnterpriseCrmEventbusProtoCoordinate({
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
      'y': ?y,
    };
  }

  factory EnterpriseCrmEventbusProtoCoordinate.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoCoordinate(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      y: (() { final guardedValue = map['y']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
