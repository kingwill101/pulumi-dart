// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Tint1 {
  final pulumi.Input<int?>? x;

  /// Creates a new [Tint1].
  /// [x] Optional.
  const Tint1({
    this.x,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
    };
  }

  factory Tint1.fromMap(Map<String, dynamic> map) {
    return Tint1(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
