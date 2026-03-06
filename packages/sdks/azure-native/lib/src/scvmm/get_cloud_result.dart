// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_capacity_response.dart';
import 'extended_location_response.dart';
import 'storage_qo_spolicy_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCloud.
class GetCloudResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Capacity of the cloud.
  final CloudCapacityResponse cloudCapacity;
  /// Name of the cloud in VMMServer.
  final String cloudName;
  /// The extended location.
  final ExtendedLocationResponse extendedLocation;
  /// Resource Id
  final String id;
  /// Gets or sets the inventory Item ID for the resource.
  final String? inventoryItemId;
  /// Gets or sets the location.
  final String location;
  /// Resource Name
  final String name;
  /// Gets or sets the provisioning state.
  final String provisioningState;
  /// List of QoS policies available for the cloud.
  final List<StorageQoSPolicyResponse> storageQoSPolicies;
  /// The system data.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource Type
  final String type;
  /// Unique ID of the cloud.
  final String? uuid;
  /// ARM Id of the vmmServer resource in which this resource resides.
  final String? vmmServerId;

  /// Creates a new [GetCloudResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cloudCapacity] Capacity of the cloud.
  /// [cloudName] Name of the cloud in VMMServer.
  /// [extendedLocation] The extended location.
  /// [id] Resource Id
  /// [inventoryItemId] Gets or sets the inventory Item ID for the resource.
  /// [location] Gets or sets the location.
  /// [name] Resource Name
  /// [provisioningState] Gets or sets the provisioning state.
  /// [storageQoSPolicies] List of QoS policies available for the cloud.
  /// [systemData] The system data.
  /// [tags] Resource tags
  /// [type] Resource Type
  /// [uuid] Unique ID of the cloud.
  /// [vmmServerId] ARM Id of the vmmServer resource in which this resource resides.
  const GetCloudResult({
    required this.azureApiVersion,
    required this.cloudCapacity,
    required this.cloudName,
    required this.extendedLocation,
    required this.id,
    this.inventoryItemId,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.storageQoSPolicies,
    required this.systemData,
    this.tags,
    required this.type,
    this.uuid,
    this.vmmServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'cloudCapacity': cloudCapacity.toMap(),
      'cloudName': cloudName,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'inventoryItemId': ?inventoryItemId,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'storageQoSPolicies': pulumi.Input.encodeList<StorageQoSPolicyResponse, Map<String, dynamic>>(storageQoSPolicies, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uuid': ?uuid,
      'vmmServerId': ?vmmServerId,
    };
  }

  factory GetCloudResult.fromMap(Map<String, dynamic> map) {
    return GetCloudResult(
      azureApiVersion: map['azureApiVersion'] as String,
      cloudCapacity: CloudCapacityResponse.fromMap((map['cloudCapacity']! as Map).cast<String, dynamic>()),
      cloudName: map['cloudName'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      inventoryItemId: (() { final guardedValue = map['inventoryItemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      storageQoSPolicies: pulumi.Input.decodeList<StorageQoSPolicyResponse>(map['storageQoSPolicies']!, (value) => StorageQoSPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmmServerId: (() { final guardedValue = map['vmmServerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

