// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPipelineStreamsResultSchemaField {
  final pulumi.Input<String> metadataKey;
  final pulumi.Input<String> name;
  final pulumi.Input<bool> required;
  final pulumi.Input<String> sqlName;
  /// Available values: "int32", "int64", "float32", "float64", "bool", "string", "binary", "timestamp", "json".
  final pulumi.Input<String> type;
  /// Available values: "second", "millisecond", "microsecond", "nanosecond".
  final pulumi.Input<String> unit;

  /// Creates a new [GetPipelineStreamsResultSchemaField].
  /// [metadataKey] Required.
  /// [name] Required.
  /// [required] Required.
  /// [sqlName] Required.
  /// [type] Available values: "int32", "int64", "float32", "float64", "bool", "string", "binary", "timestamp", "json".
  /// [unit] Available values: "second", "millisecond", "microsecond", "nanosecond".
  const GetPipelineStreamsResultSchemaField({
    required this.metadataKey,
    required this.name,
    required this.required,
    required this.sqlName,
    required this.type,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataKey': metadataKey,
      'name': name,
      'required': required,
      'sqlName': sqlName,
      'type': type,
      'unit': unit,
    };
  }

  factory GetPipelineStreamsResultSchemaField.fromMap(Map<String, dynamic> map) {
    return GetPipelineStreamsResultSchemaField(
      metadataKey: pulumi.Input.fromValue(map['metadataKey'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      required: pulumi.Input.fromValue(map['required'] as bool),
      sqlName: pulumi.Input.fromValue(map['sqlName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      unit: pulumi.Input.fromValue(map['unit'] as String),
    );
  }
}
