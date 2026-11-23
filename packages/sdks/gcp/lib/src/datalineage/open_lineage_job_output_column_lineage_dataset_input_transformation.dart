// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OpenLineageJobOutputColumnLineageDatasetInputTransformation {
  /// Transformation subtype.
  final pulumi.Input<String?>? subtype;
  /// Transformation type.
  final pulumi.Input<String> type;

  /// Creates a new [OpenLineageJobOutputColumnLineageDatasetInputTransformation].
  /// [subtype] Transformation subtype.
  /// [type] Transformation type.
  const OpenLineageJobOutputColumnLineageDatasetInputTransformation({
    this.subtype,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subtype': ?subtype,
      'type': type,
    };
  }

  factory OpenLineageJobOutputColumnLineageDatasetInputTransformation.fromMap(Map<String, dynamic> map) {
    return OpenLineageJobOutputColumnLineageDatasetInputTransformation(
      subtype: (() { final guardedValue = map['subtype']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
