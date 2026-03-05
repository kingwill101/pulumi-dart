// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getNetworkGroup.
class GetNetworkGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A description of the network group.
  final String? description;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String id;
  /// The type of the group member.
  final String? memberType;
  /// Resource name.
  final String name;
  /// The provisioning state of the scope assignment resource.
  final String provisioningState;
  /// Unique identifier for this resource.
  final String resourceGuid;
  /// The system metadata related to this resource.
  final SystemDataResponse systemData;
  /// Resource type.
  final String type;

  /// Creates a new [GetNetworkGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] A description of the network group.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [memberType] The type of the group member.
  /// [name] Resource name.
  /// [provisioningState] The provisioning state of the scope assignment resource.
  /// [resourceGuid] Unique identifier for this resource.
  /// [systemData] The system metadata related to this resource.
  /// [type] Resource type.
  GetNetworkGroupResult({
    required this.azureApiVersion,
    this.description,
    required this.etag,
    required this.id,
    this.memberType,
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
      'memberType': ?memberType,
      'name': name,
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetNetworkGroupResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: map['etag'] as String,
      id: map['id'] as String,
      memberType: (() { final guardedValue = map['memberType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceGuid: map['resourceGuid'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

