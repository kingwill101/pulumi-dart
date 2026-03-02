// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'field_mapping_response.dart';

/// Single entity mapping for the alert rule
class EntityMappingResponse {
  /// The V3 type of the mapped entity
  final pulumi.Input<String>? entityType;
  /// array of field mappings for the given entity mapping
  final pulumi.Input<List<FieldMappingResponse>>? fieldMappings;

  /// Creates a new [EntityMappingResponse].
  /// [entityType] The V3 type of the mapped entity
  /// [fieldMappings] array of field mappings for the given entity mapping
  EntityMappingResponse({
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
      entityType: map['entityType'] == null ? null : (map['entityType']! as String).input(),
      fieldMappings: map['fieldMappings'] == null ? null : (pulumi.Input.decodeList<FieldMappingResponse>(map['fieldMappings']!, (value) => FieldMappingResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

