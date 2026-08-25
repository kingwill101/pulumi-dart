// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iceberg_table_schema_field.dart';

class IcebergTableSchema {
  /// Structure is documented below.
  final pulumi.Input<List<IcebergTableSchemaField>> fields;
  /// The field IDs that make up the identifier for the table.
  final pulumi.Input<List<int>?>? identifierFieldIds;
  /// (Output)
  /// The unique identifier of the schema.
  final pulumi.Input<int?>? schemaId;
  /// The type of the schema.
  final pulumi.Input<String?>? type;

  /// Creates a new [IcebergTableSchema].
  /// [fields] Structure is documented below.
  /// [identifierFieldIds] The field IDs that make up the identifier for the table.
  /// [schemaId] (Output)
  /// [type] The type of the schema.
  const IcebergTableSchema({
    required this.fields,
    this.identifierFieldIds,
    this.schemaId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': pulumi.Input.mapInputValue<List<IcebergTableSchemaField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<IcebergTableSchemaField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identifierFieldIds': ?identifierFieldIds,
      'schemaId': ?schemaId,
      'type': ?type,
    };
  }

  factory IcebergTableSchema.fromMap(Map<String, dynamic> map) {
    return IcebergTableSchema(
      fields: pulumi.Input.fromValue(pulumi.Input.decodeList<IcebergTableSchemaField>(map['fields']!, (value) => IcebergTableSchemaField.fromMap((value as Map).cast<String, dynamic>()))),
      identifierFieldIds: (() { final guardedValue = map['identifierFieldIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      schemaId: (() { final guardedValue = map['schemaId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
