// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IcebergTableSchemaField {
  /// A description of the field.
  final pulumi.Input<String?>? doc;
  /// The unique identifier of the field.
  final pulumi.Input<int> id;
  /// The name of the partition field.
  final pulumi.Input<String> name;
  /// Whether the field is required.
  final pulumi.Input<bool> required;
  /// The type of the field.
  final pulumi.Input<String> type;

  /// Creates a new [IcebergTableSchemaField].
  /// [doc] A description of the field.
  /// [id] The unique identifier of the field.
  /// [name] The name of the partition field.
  /// [required] Whether the field is required.
  /// [type] The type of the field.
  const IcebergTableSchemaField({
    this.doc,
    required this.id,
    required this.name,
    required this.required,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doc': ?doc,
      'id': id,
      'name': name,
      'required': required,
      'type': type,
    };
  }

  factory IcebergTableSchemaField.fromMap(Map<String, dynamic> map) {
    return IcebergTableSchemaField(
      doc: (() { final guardedValue = map['doc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue((map['id'] as num).toInt()),
      name: pulumi.Input.fromValue(map['name'] as String),
      required: pulumi.Input.fromValue(map['required'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
