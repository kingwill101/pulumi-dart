// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Variant4 {
  final pulumi.Input<String> discriminantKind;
  final pulumi.Input<bool?>? enabled;
  final pulumi.Input<String?>? payload;

  /// Creates a new [Variant4].
  /// [discriminantKind] Required.
  /// [enabled] Optional.
  /// [payload] Optional.
  const Variant4({
    required this.discriminantKind,
    this.enabled,
    this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discriminantKind': discriminantKind,
      'enabled': ?enabled,
      'payload': ?payload,
    };
  }

  factory Variant4.fromMap(Map<String, dynamic> map) {
    return Variant4(
      discriminantKind: pulumi.Input.fromValue(map['discriminantKind'] as String),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
