// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Variant10 {
  final pulumi.Input<String> discriminantKind;
  final pulumi.Input<String?>? note;
  final pulumi.Input<String?>? payload;

  /// Creates a new [Variant10].
  /// [discriminantKind] Required.
  /// [note] Optional.
  /// [payload] Optional.
  const Variant10({
    required this.discriminantKind,
    this.note,
    this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discriminantKind': discriminantKind,
      'note': ?note,
      'payload': ?payload,
    };
  }

  factory Variant10.fromMap(Map<String, dynamic> map) {
    return Variant10(
      discriminantKind: pulumi.Input.fromValue(map['discriminantKind'] as String),
      note: (() { final guardedValue = map['note']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
