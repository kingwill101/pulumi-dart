// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Variant9 {
  final pulumi.Input<String> discriminantKind;
  final pulumi.Input<bool?>? flag;
  final pulumi.Input<String?>? payload;

  /// Creates a new [Variant9].
  /// [discriminantKind] Required.
  /// [flag] Optional.
  /// [payload] Optional.
  const Variant9({
    required this.discriminantKind,
    this.flag,
    this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discriminantKind': discriminantKind,
      'flag': ?flag,
      'payload': ?payload,
    };
  }

  factory Variant9.fromMap(Map<String, dynamic> map) {
    return Variant9(
      discriminantKind: pulumi.Input.fromValue(map['discriminantKind'] as String),
      flag: (() { final guardedValue = map['flag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
