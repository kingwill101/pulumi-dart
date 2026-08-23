// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Variant8 {
  final pulumi.Input<String> discriminantKind;
  final pulumi.Input<String?>? payload;
  final pulumi.Input<int?>? size;

  /// Creates a new [Variant8].
  /// [discriminantKind] Required.
  /// [payload] Optional.
  /// [size] Optional.
  const Variant8({
    required this.discriminantKind,
    this.payload,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discriminantKind': discriminantKind,
      'payload': ?payload,
      'size': ?size,
    };
  }

  factory Variant8.fromMap(Map<String, dynamic> map) {
    return Variant8(
      discriminantKind: pulumi.Input.fromValue(map['discriminantKind'] as String),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
