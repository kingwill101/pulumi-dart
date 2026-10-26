// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attribute_response_healthcare_v1beta1.dart';

/// Result data returned by getUserDataMapping.
class GetUserDataMappingHealthcareV1beta1Result {
  /// Indicates the time when this mapping was archived.
  final String? archiveTime;
  /// Indicates whether this mapping is archived.
  final bool? archived;
  /// A unique identifier for the mapped resource.
  final String? dataId;
  /// Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.
  final String? name;
  /// Attributes of the resource. Only explicitly set attributes are displayed here. Attribute definitions with defaults set implicitly apply to these User data mappings. Attributes listed here must be single valued, that is, exactly one value is specified for the field "values" in each Attribute.
  final List<AttributeResponseHealthcareV1beta1>? resourceAttributes;
  /// User's UUID provided by the client.
  final String? userId;

  /// Creates a new [GetUserDataMappingHealthcareV1beta1Result].
  /// [archiveTime] Indicates the time when this mapping was archived.
  /// [archived] Indicates whether this mapping is archived.
  /// [dataId] A unique identifier for the mapped resource.
  /// [name] Resource name of the User data mapping, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/userDataMappings/{user_data_mapping_id}`.
  /// [resourceAttributes] Attributes of the resource. Only explicitly set attributes are displayed here. Attribute definitions with defaults set implicitly apply to these User data mappings. Attributes listed here must be single valued, that is, exactly one value is specified for the field "values" in each Attribute.
  /// [userId] User's UUID provided by the client.
  const GetUserDataMappingHealthcareV1beta1Result({
    this.archiveTime,
    this.archived,
    this.dataId,
    this.name,
    this.resourceAttributes,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveTime': ?archiveTime,
      'archived': ?archived,
      'dataId': ?dataId,
      'name': ?name,
      'resourceAttributes': ?(() { final guardedValue = resourceAttributes; if (guardedValue == null) return null; return pulumi.Input.encodeList<AttributeResponseHealthcareV1beta1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'userId': ?userId,
    };
  }

  factory GetUserDataMappingHealthcareV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetUserDataMappingHealthcareV1beta1Result(
      archiveTime: (() { final guardedValue = map['archiveTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      archived: (() { final guardedValue = map['archived']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dataId: (() { final guardedValue = map['dataId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceAttributes: (() { final guardedValue = map['resourceAttributes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AttributeResponseHealthcareV1beta1>(guardedValue, (value) => AttributeResponseHealthcareV1beta1.fromMap((value as Map).cast<String, dynamic>())); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
