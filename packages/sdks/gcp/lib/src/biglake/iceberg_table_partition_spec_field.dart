// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IcebergTablePartitionSpecField {
  /// (Output)
  /// The unique identifier of the partition field.
  final pulumi.Input<int>? fieldId;
  /// The name of the partition field.
  final pulumi.Input<String> name;
  /// The source field ID for the sort field.
  final pulumi.Input<int> sourceId;
  /// The transform to apply to the source field.
  final pulumi.Input<String> transform;

  /// Creates a new [IcebergTablePartitionSpecField].
  /// [fieldId] (Output)
  /// [name] The name of the partition field.
  /// [sourceId] The source field ID for the sort field.
  /// [transform] The transform to apply to the source field.
  const IcebergTablePartitionSpecField({
    this.fieldId,
    required this.name,
    required this.sourceId,
    required this.transform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fieldId': ?fieldId,
      'name': name,
      'sourceId': sourceId,
      'transform': transform,
    };
  }

  factory IcebergTablePartitionSpecField.fromMap(Map<String, dynamic> map) {
    return IcebergTablePartitionSpecField(
      fieldId: (() { final guardedValue = map['fieldId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as int),
      transform: pulumi.Input.fromValue(map['transform'] as String),
    );
  }
}
