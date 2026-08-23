// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VariantOne {
  final pulumi.Input<String> discriminantKind;
  final pulumi.Input<String?>? field1;

  /// Creates a new [VariantOne].
  /// [discriminantKind] Required.
  /// [field1] Optional.
  const VariantOne({
    required this.discriminantKind,
    this.field1,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discriminantKind': discriminantKind,
      'field1': ?field1,
    };
  }

  factory VariantOne.fromMap(Map<String, dynamic> map) {
    return VariantOne(
      discriminantKind: pulumi.Input.fromValue(map['discriminantKind'] as String),
      field1: (() { final guardedValue = map['field1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
