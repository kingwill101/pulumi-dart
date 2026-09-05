// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Variant6 {
  final pulumi.Input<int?>? code;
  final pulumi.Input<String> discriminantKind;
  final pulumi.Input<String?>? payload;

  /// Creates a new [Variant6].
  /// [code] Optional.
  /// [discriminantKind] Required.
  /// [payload] Optional.
  const Variant6({
    this.code,
    required this.discriminantKind,
    this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'discriminantKind': discriminantKind,
      'payload': ?payload,
    };
  }

  factory Variant6.fromMap(Map<String, dynamic> map) {
    return Variant6(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      discriminantKind: pulumi.Input.fromValue(map['discriminantKind'] as String),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
