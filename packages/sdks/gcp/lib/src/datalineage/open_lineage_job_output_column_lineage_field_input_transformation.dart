// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenLineageJobOutputColumnLineageFieldInputTransformation {
  /// Transformation subtype.
  final pulumi.Input<String?>? subtype;
  /// Transformation type.
  final pulumi.Input<String> type;

  /// Creates a new [OpenLineageJobOutputColumnLineageFieldInputTransformation].
  /// [subtype] Transformation subtype.
  /// [type] Transformation type.
  const OpenLineageJobOutputColumnLineageFieldInputTransformation({
    this.subtype,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subtype': ?subtype,
      'type': type,
    };
  }

  factory OpenLineageJobOutputColumnLineageFieldInputTransformation.fromMap(Map<String, dynamic> map) {
    return OpenLineageJobOutputColumnLineageFieldInputTransformation(
      subtype: (() { final guardedValue = map['subtype']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
