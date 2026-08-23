// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Tbool1 {
  final pulumi.Input<bool?>? x;

  /// Creates a new [Tbool1].
  /// [x] Optional.
  const Tbool1({
    this.x,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
    };
  }

  factory Tbool1.fromMap(Map<String, dynamic> map) {
    return Tbool1(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
