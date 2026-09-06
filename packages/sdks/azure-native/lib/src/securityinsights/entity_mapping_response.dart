// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_mapping_response.dart';

/// Single entity mapping for the alert rule
class EntityMappingResponse {
  /// The V3 type of the mapped entity
  final pulumi.Input<String?>? entityType;
  /// array of field mappings for the given entity mapping
  final pulumi.Input<List<FieldMappingResponse>?>? fieldMappings;

  /// Creates a new [EntityMappingResponse].
  /// [entityType] The V3 type of the mapped entity
  /// [fieldMappings] array of field mappings for the given entity mapping
  const EntityMappingResponse({
    this.entityType,
    this.fieldMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityType': ?entityType,
      'fieldMappings': ?pulumi.Input.mapOptionalInputValue<List<FieldMappingResponse>, List<Map<String, dynamic>>>(fieldMappings, (value) => pulumi.Input.encodeList<FieldMappingResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EntityMappingResponse.fromMap(Map<String, dynamic> map) {
    return EntityMappingResponse(
      entityType: (() { final guardedValue = map['entityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldMappings: (() { final guardedValue = map['fieldMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FieldMappingResponse>(guardedValue, (value) => FieldMappingResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
