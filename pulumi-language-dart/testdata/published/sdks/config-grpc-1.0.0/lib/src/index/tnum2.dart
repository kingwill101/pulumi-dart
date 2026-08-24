// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Tnum2 {
  final pulumi.Input<double?>? x;

  /// Creates a new [Tnum2].
  /// [x] Optional.
  const Tnum2({
    this.x,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
    };
  }

  factory Tnum2.fromMap(Map<String, dynamic> map) {
    return Tnum2(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
