// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiSearchInstanceCustomMetadata {
  /// Available values: "text", "number", "boolean", "datetime".
  final pulumi.Input<String> dataType;
  final pulumi.Input<String> fieldName;

  /// Creates a new [AiSearchInstanceCustomMetadata].
  /// [dataType] Available values: "text", "number", "boolean", "datetime".
  /// [fieldName] Required.
  const AiSearchInstanceCustomMetadata({
    required this.dataType,
    required this.fieldName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataType': dataType,
      'fieldName': fieldName,
    };
  }

  factory AiSearchInstanceCustomMetadata.fromMap(Map<String, dynamic> map) {
    return AiSearchInstanceCustomMetadata(
      dataType: pulumi.Input.fromValue(map['dataType'] as String),
      fieldName: pulumi.Input.fromValue(map['fieldName'] as String),
    );
  }
}
