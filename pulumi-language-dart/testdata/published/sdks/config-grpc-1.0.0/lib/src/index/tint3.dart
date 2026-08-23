// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Tint3 {
  final pulumi.Input<int?>? x;

  /// Creates a new [Tint3].
  /// [x] Optional.
  const Tint3({
    this.x,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
    };
  }

  factory Tint3.fromMap(Map<String, dynamic> map) {
    return Tint3(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
