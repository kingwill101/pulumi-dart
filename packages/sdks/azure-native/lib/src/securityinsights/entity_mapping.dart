// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_mapping.dart';

/// Single entity mapping for the alert rule
class EntityMapping {
  /// The V3 type of the mapped entity
  final String? entityType;
  /// array of field mappings for the given entity mapping
  final List<FieldMapping>? fieldMappings;

  /// Creates a new [EntityMapping].
  /// [entityType] The V3 type of the mapped entity
  /// [fieldMappings] array of field mappings for the given entity mapping
  EntityMapping({
    this.entityType,
    this.fieldMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityType': ?entityType,
      'fieldMappings': ?fieldMappings == null ? null : pulumi.Input.encodeList<FieldMapping, Map<String, dynamic>>(fieldMappings!, (value) => value.toMap()),
    };
  }

  factory EntityMapping.fromMap(Map<String, dynamic> map) {
    return EntityMapping(
      entityType: map['entityType'] == null ? null : map['entityType'] as String,
      fieldMappings: map['fieldMappings'] == null ? null : pulumi.Input.decodeList<FieldMapping>(map['fieldMappings'], (value) => FieldMapping.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

