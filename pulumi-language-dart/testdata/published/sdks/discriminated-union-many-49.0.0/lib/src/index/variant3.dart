// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Variant3 {
  final pulumi.Input<int?>? count;
  final pulumi.Input<String> discriminantKind;
  final pulumi.Input<String?>? payload;

  /// Creates a new [Variant3].
  /// [count] Optional.
  /// [discriminantKind] Required.
  /// [payload] Optional.
  const Variant3({
    this.count,
    required this.discriminantKind,
    this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'discriminantKind': discriminantKind,
      'payload': ?payload,
    };
  }

  factory Variant3.fromMap(Map<String, dynamic> map) {
    return Variant3(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      discriminantKind: pulumi.Input.fromValue(map['discriminantKind'] as String),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
