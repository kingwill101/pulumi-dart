// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VariantTwo {
  final pulumi.Input<String> discriminantKind;
  final pulumi.Input<String?>? field2;

  /// Creates a new [VariantTwo].
  /// [discriminantKind] Required.
  /// [field2] Optional.
  const VariantTwo({
    required this.discriminantKind,
    this.field2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'discriminantKind': discriminantKind,
      'field2': ?field2,
    };
  }

  factory VariantTwo.fromMap(Map<String, dynamic> map) {
    return VariantTwo(
      discriminantKind: pulumi.Input.fromValue(map['discriminantKind'] as String),
      field2: (() { final guardedValue = map['field2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
