// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_mapping.dart';

/// Single entity mapping for the alert rule
class EntityMapping {
  /// The V3 type of the mapped entity
  final pulumi.Input<String>? entityType;

  /// array of field mappings for the given entity mapping
  final pulumi.Input<List<FieldMapping>>? fieldMappings;

  /// Creates a new [EntityMapping].
  /// [entityType] The V3 type of the mapped entity
  /// [fieldMappings] array of field mappings for the given entity mapping
  EntityMapping({this.entityType, this.fieldMappings});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityType': ?entityType,
      'fieldMappings':
          ?pulumi.Input.mapOptionalInputValue<
            List<FieldMapping>,
            List<Map<String, dynamic>>
          >(
            fieldMappings,
            (value) =>
                pulumi.Input.encodeList<FieldMapping, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory EntityMapping.fromMap(Map<String, dynamic> map) {
    return EntityMapping(
      entityType: (() {
        final guardedValue = map['entityType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fieldMappings: (() {
        final guardedValue = map['fieldMappings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<FieldMapping>(
            guardedValue,
            (value) =>
                FieldMapping.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
