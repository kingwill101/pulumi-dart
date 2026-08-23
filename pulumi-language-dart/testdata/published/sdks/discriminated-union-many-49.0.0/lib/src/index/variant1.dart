// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Variant1 {
  final pulumi.Input<String> discriminantKind;
  final pulumi.Input<String?>? extra;
  final pulumi.Input<String?>? payload;

  /// Creates a new [Variant1].
  /// [discriminantKind] Required.
  /// [extra] Optional.
  /// [payload] Optional.
  const Variant1({
    required this.discriminantKind,
    this.extra,
    this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discriminantKind': discriminantKind,
      'extra': ?extra,
      'payload': ?payload,
    };
  }

  factory Variant1.fromMap(Map<String, dynamic> map) {
    return Variant1(
      discriminantKind: pulumi.Input.fromValue(map['discriminantKind'] as String),
      extra: (() { final guardedValue = map['extra']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
