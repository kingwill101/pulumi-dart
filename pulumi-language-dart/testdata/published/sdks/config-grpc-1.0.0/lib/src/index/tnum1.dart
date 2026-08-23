// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Tnum1 {
  final pulumi.Input<double?>? x;

  /// Creates a new [Tnum1].
  /// [x] Optional.
  const Tnum1({
    this.x,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
    };
  }

  factory Tnum1.fromMap(Map<String, dynamic> map) {
    return Tnum1(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
