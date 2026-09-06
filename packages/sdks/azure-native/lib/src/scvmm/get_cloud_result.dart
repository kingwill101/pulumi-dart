// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_capacity_response.dart';
import 'extended_location_response.dart';
import 'storage_qo_spolicy_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCloud.
class GetCloudResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Capacity of the cloud.
  final CloudCapacityResponse? cloudCapacity;
  /// Name of the cloud in VMMServer.
  final String? cloudName;
  /// The extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Resource Id
  final String? id;
  /// Gets or sets the inventory Item ID for the resource.
  final String? inventoryItemId;
  /// Gets or sets the location.
  final String? location;
  /// Resource Name
  final String? name;
  /// Gets or sets the provisioning state.
  final String? provisioningState;
  /// List of QoS policies available for the cloud.
  final List<StorageQoSPolicyResponse>? storageQoSPolicies;
  /// The system data.
  final SystemDataResponse? systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource Type
  final String? type;
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
    this.azureApiVersion,
    this.cloudCapacity,
    this.cloudName,
    this.extendedLocation,
    this.id,
    this.inventoryItemId,
    this.location,
    this.name,
    this.provisioningState,
    this.storageQoSPolicies,
    this.systemData,
    this.tags,
    this.type,
    this.uuid,
    this.vmmServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'cloudCapacity': ?cloudCapacity?.toMap(),
      'cloudName': ?cloudName,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'inventoryItemId': ?inventoryItemId,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'storageQoSPolicies': ?(() { final guardedValue = storageQoSPolicies; if (guardedValue == null) return null; return pulumi.Input.encodeList<StorageQoSPolicyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uuid': ?uuid,
      'vmmServerId': ?vmmServerId,
    };
  }

  factory GetCloudResult.fromMap(Map<String, dynamic> map) {
    return GetCloudResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cloudCapacity: (() { final guardedValue = map['cloudCapacity']; if (guardedValue == null) return null; return CloudCapacityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      cloudName: (() { final guardedValue = map['cloudName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inventoryItemId: (() { final guardedValue = map['inventoryItemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageQoSPolicies: (() { final guardedValue = map['storageQoSPolicies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StorageQoSPolicyResponse>(guardedValue, (value) => StorageQoSPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmmServerId: (() { final guardedValue = map['vmmServerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
