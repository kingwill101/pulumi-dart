// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Variant7 {
  final pulumi.Input<String> discriminantKind;
  final pulumi.Input<String?>? message;
  final pulumi.Input<String?>? payload;

  /// Creates a new [Variant7].
  /// [discriminantKind] Required.
  /// [message] Optional.
  /// [payload] Optional.
  const Variant7({
    required this.discriminantKind,
    this.message,
    this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discriminantKind': discriminantKind,
      'message': ?message,
      'payload': ?payload,
    };
  }

  factory Variant7.fromMap(Map<String, dynamic> map) {
    return Variant7(
      discriminantKind: pulumi.Input.fromValue(map['discriminantKind'] as String),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
