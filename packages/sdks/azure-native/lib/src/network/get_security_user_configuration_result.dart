// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getSecurityUserConfiguration.
class GetSecurityUserConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A description of the security user configuration.
  final String? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// Unique identifier for this resource.
  final String resourceGuid;
  /// The system metadata related to this resource.
  final SystemDataResponse systemData;
  /// Resource type.
  final String type;

  /// Creates a new [GetSecurityUserConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description of the security user configuration.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the resource.
  /// [resourceGuid] Unique identifier for this resource.
  /// [systemData] The system metadata related to this resource.
  /// [type] Resource type.
  GetSecurityUserConfigurationResult({
    required this.azureApiVersion,
    this.description,
    required this.etag,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.resourceGuid,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'etag': etag,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetSecurityUserConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityUserConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

