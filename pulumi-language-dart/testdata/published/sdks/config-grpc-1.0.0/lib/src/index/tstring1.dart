// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Tstring1 {
  final pulumi.Input<String?>? x;

  /// Creates a new [Tstring1].
  /// [x] Optional.
  const Tstring1({
    this.x,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
    };
  }

  factory Tstring1.fromMap(Map<String, dynamic> map) {
    return Tstring1(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
