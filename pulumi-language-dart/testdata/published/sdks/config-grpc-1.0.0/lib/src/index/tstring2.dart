// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Tstring2 {
  final pulumi.Input<String?>? x;

  /// Creates a new [Tstring2].
  /// [x] Optional.
  const Tstring2({
    this.x,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
    };
  }

  factory Tstring2.fromMap(Map<String, dynamic> map) {
    return Tstring2(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
