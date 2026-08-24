// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Variant5 {
  final pulumi.Input<String> discriminantKind;
  final pulumi.Input<String?>? label;
  final pulumi.Input<String?>? payload;

  /// Creates a new [Variant5].
  /// [discriminantKind] Required.
  /// [label] Optional.
  /// [payload] Optional.
  const Variant5({
    required this.discriminantKind,
    this.label,
    this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discriminantKind': discriminantKind,
      'label': ?label,
      'payload': ?payload,
    };
  }

  factory Variant5.fromMap(Map<String, dynamic> map) {
    return Variant5(
      discriminantKind: pulumi.Input.fromValue(map['discriminantKind'] as String),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
