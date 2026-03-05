// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getStaticMember.
class GetStaticMemberResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// The provisioning state of the scope assignment resource.
  final String provisioningState;
  /// Resource region.
  final String region;
  /// Resource Id.
  final String? resourceId;
  /// The system metadata related to this resource.
  final SystemDataResponse systemData;
  /// Resource type.
  final String type;

  /// Creates a new [GetStaticMemberResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the scope assignment resource.
  /// [region] Resource region.
  /// [resourceId] Resource Id.
  /// [systemData] The system metadata related to this resource.
  /// [type] Resource type.
  GetStaticMemberResult({
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.region,
    this.resourceId,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'region': region,
      'resourceId': ?resourceId,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetStaticMemberResult.fromMap(Map<String, dynamic> map) {
    return GetStaticMemberResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      region: map['region'] as String,
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

