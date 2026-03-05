// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attribute_response.dart';

/// Result data returned by getUserDataMapping.
class GetUserDataMappingResult {
  /// Indicates the time when this mapping was archived.
  final String archiveTime;
  /// Indicates whether this mapping is archived.
  final bool archived;
  /// A unique identifier for the mapped resource.
  final String dataId;
  /// Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.
  final String name;
  /// Attributes of the resource. Only explicitly set attributes are displayed here. Attribute definitions with defaults set implicitly apply to these User data mappings. Attributes listed here must be single valued, that is, exactly one value is specified for the field "values" in each Attribute.
  final List<AttributeResponse> resourceAttributes;
  /// User's UUID provided by the client.
  final String userId;

  /// Creates a new [GetUserDataMappingResult].
  /// [archiveTime] Indicates the time when this mapping was archived.
  /// [archived] Indicates whether this mapping is archived.
  /// [dataId] A unique identifier for the mapped resource.
  /// [name] Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.
  /// [resourceAttributes] Attributes of the resource. Only explicitly set attributes are displayed here. Attribute definitions with defaults set implicitly apply to these User data mappings. Attributes listed here must be single valued, that is, exactly one value is specified for the field "values" in each Attribute.
  /// [userId] User's UUID provided by the client.
  GetUserDataMappingResult({
    required this.archiveTime,
    required this.archived,
    required this.dataId,
    required this.name,
    required this.resourceAttributes,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveTime': archiveTime,
      'archived': archived,
      'dataId': dataId,
      'name': name,
      'resourceAttributes': pulumi.Input.encodeList<AttributeResponse, Map<String, dynamic>>(resourceAttributes, (value) => value.toMap()),
      'userId': userId,
    };
  }

  factory GetUserDataMappingResult.fromMap(Map<String, dynamic> map) {
    return GetUserDataMappingResult(
      archiveTime: map['archiveTime'] as String,
      archived: map['archived'] as bool,
      dataId: map['dataId'] as String,
      name: map['name'] as String,
      resourceAttributes: pulumi.Input.decodeList<AttributeResponse>(map['resourceAttributes']!, (value) => AttributeResponse.fromMap((value as Map).cast<String, dynamic>())),
      userId: map['userId'] as String,
    );
  }
}

