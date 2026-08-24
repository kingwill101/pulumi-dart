// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Tbool2 {
  final pulumi.Input<bool?>? x;

  /// Creates a new [Tbool2].
  /// [x] Optional.
  const Tbool2({
    this.x,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
    };
  }

  factory Tbool2.fromMap(Map<String, dynamic> map) {
    return Tbool2(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
