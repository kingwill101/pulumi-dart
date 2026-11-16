// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SchemaVersionSchemaEntityTypeProperty {
  /// User defined name for the property.
  final pulumi.Input<String?>? displayName;
  /// Specifies how the entity's value is obtained.
  /// Possible values are: `EXTRACT`, `DERIVE`, `RELAXED_EXTRACT`.
  final pulumi.Input<String?>? method;
  /// The name of the property. Follows the same guidelines as the EntityType name.
  final pulumi.Input<String> name;
  /// Occurrence type limits the number of instances an entity type appears in the document.
  /// Possible values are: `OPTIONAL_ONCE`, `OPTIONAL_MULTIPLE`, `REQUIRED_ONCE`, `REQUIRED_MULTIPLE`.
  final pulumi.Input<String?>? occurrenceType;
  /// A reference to the value type of the property. This type is subject to the same conventions as the `Entity.base_types` field.
  final pulumi.Input<String> valueType;

  /// Creates a new [SchemaVersionSchemaEntityTypeProperty].
  /// [displayName] User defined name for the property.
  /// [method] Specifies how the entity's value is obtained.
  /// [name] The name of the property. Follows the same guidelines as the EntityType name.
  /// [occurrenceType] Occurrence type limits the number of instances an entity type appears in the document.
  /// [valueType] A reference to the value type of the property. This type is subject to the same conventions as the `Entity.base_types` field.
  const SchemaVersionSchemaEntityTypeProperty({
    this.displayName,
    this.method,
    required this.name,
    this.occurrenceType,
    required this.valueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'method': ?method,
      'name': name,
      'occurrenceType': ?occurrenceType,
      'valueType': valueType,
    };
  }

  factory SchemaVersionSchemaEntityTypeProperty.fromMap(Map<String, dynamic> map) {
    return SchemaVersionSchemaEntityTypeProperty(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      occurrenceType: (() { final guardedValue = map['occurrenceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      valueType: pulumi.Input.fromValue(map['valueType'] as String),
    );
  }
}
