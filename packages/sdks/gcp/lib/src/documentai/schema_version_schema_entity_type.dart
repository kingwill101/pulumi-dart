// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_version_schema_entity_type_enum_values.dart';
import 'schema_version_schema_entity_type_property.dart';

class SchemaVersionSchemaEntityType {
  /// The entity type that this type is derived from. For now, one and only one should be set.
  final pulumi.Input<List<String>?>? baseTypes;
  /// User defined name for the type.
  final pulumi.Input<String?>? displayName;
  /// Defines a list of enum values.
  /// Structure is documented below.
  final pulumi.Input<SchemaVersionSchemaEntityTypeEnumValues?>? enumValues;
  /// Name of the type. It must be unique within the schema file and cannot be a "Common Type".
  final pulumi.Input<String> name;
  /// Defines properties that can be part of the entity type.
  /// Structure is documented below.
  final pulumi.Input<List<SchemaVersionSchemaEntityTypeProperty>?>? properties;

  /// Creates a new [SchemaVersionSchemaEntityType].
  /// [baseTypes] The entity type that this type is derived from. For now, one and only one should be set.
  /// [displayName] User defined name for the type.
  /// [enumValues] Defines a list of enum values.
  /// [name] Name of the type. It must be unique within the schema file and cannot be a "Common Type".
  /// [properties] Defines properties that can be part of the entity type.
  const SchemaVersionSchemaEntityType({
    this.baseTypes,
    this.displayName,
    this.enumValues,
    required this.name,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseTypes': ?baseTypes,
      'displayName': ?displayName,
      'enumValues': ?pulumi.Input.mapOptionalInputValue<SchemaVersionSchemaEntityTypeEnumValues, Map<String, dynamic>>(enumValues, (value) => value.toMap()),
      'name': name,
      'properties': ?pulumi.Input.mapOptionalInputValue<List<SchemaVersionSchemaEntityTypeProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<SchemaVersionSchemaEntityTypeProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SchemaVersionSchemaEntityType.fromMap(Map<String, dynamic> map) {
    return SchemaVersionSchemaEntityType(
      baseTypes: (() { final guardedValue = map['baseTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enumValues: (() { final guardedValue = map['enumValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchemaVersionSchemaEntityTypeEnumValues.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SchemaVersionSchemaEntityTypeProperty>(guardedValue, (value) => SchemaVersionSchemaEntityTypeProperty.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
