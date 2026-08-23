// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Tstring3 {
  final pulumi.Input<String?>? x;

  /// Creates a new [Tstring3].
  /// [x] Optional.
  const Tstring3({
    this.x,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
    };
  }

  factory Tstring3.fromMap(Map<String, dynamic> map) {
    return Tstring3(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
