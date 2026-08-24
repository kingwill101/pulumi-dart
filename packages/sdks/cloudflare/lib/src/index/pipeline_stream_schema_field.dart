// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineStreamSchemaField {
  final pulumi.Input<String?>? metadataKey;
  final pulumi.Input<String?>? name;
  final pulumi.Input<bool?>? required;
  final pulumi.Input<String?>? sqlName;
  /// Available values: "int32", "int64", "float32", "float64", "bool", "string", "binary", "timestamp", "json".
  final pulumi.Input<String> type;
  /// Available values: "second", "millisecond", "microsecond", "nanosecond".
  final pulumi.Input<String?>? unit;

  /// Creates a new [PipelineStreamSchemaField].
  /// [metadataKey] Optional.
  /// [name] Optional.
  /// [required] Optional.
  /// [sqlName] Optional.
  /// [type] Available values: "int32", "int64", "float32", "float64", "bool", "string", "binary", "timestamp", "json".
  /// [unit] Available values: "second", "millisecond", "microsecond", "nanosecond".
  const PipelineStreamSchemaField({
    this.metadataKey,
    this.name,
    this.required,
    this.sqlName,
    required this.type,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataKey': ?metadataKey,
      'name': ?name,
      'required': ?required,
      'sqlName': ?sqlName,
      'type': type,
      'unit': ?unit,
    };
  }

  factory PipelineStreamSchemaField.fromMap(Map<String, dynamic> map) {
    return PipelineStreamSchemaField(
      metadataKey: (() { final guardedValue = map['metadataKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sqlName: (() { final guardedValue = map['sqlName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
