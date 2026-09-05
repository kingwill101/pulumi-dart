// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Tint2 {
  final pulumi.Input<int?>? x;

  /// Creates a new [Tint2].
  /// [x] Optional.
  const Tint2({
    this.x,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
    };
  }

  factory Tint2.fromMap(Map<String, dynamic> map) {
    return Tint2(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
