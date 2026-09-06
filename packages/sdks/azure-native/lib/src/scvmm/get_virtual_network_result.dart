// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVirtualNetwork.
class GetVirtualNetworkResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
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
  /// Name of the virtual network in vmmServer.
  final String? networkName;
  /// Gets or sets the provisioning state.
  final String? provisioningState;
  /// The system data.
  final SystemDataResponse? systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource Type
  final String? type;
  /// Unique ID of the virtual network.
  final String? uuid;
  /// ARM Id of the vmmServer resource in which this resource resides.
  final String? vmmServerId;

  /// Creates a new [GetVirtualNetworkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [extendedLocation] The extended location.
  /// [id] Resource Id
  /// [inventoryItemId] Gets or sets the inventory Item ID for the resource.
  /// [location] Gets or sets the location.
  /// [name] Resource Name
  /// [networkName] Name of the virtual network in vmmServer.
  /// [provisioningState] Gets or sets the provisioning state.
  /// [systemData] The system data.
  /// [tags] Resource tags
  /// [type] Resource Type
  /// [uuid] Unique ID of the virtual network.
  /// [vmmServerId] ARM Id of the vmmServer resource in which this resource resides.
  const GetVirtualNetworkResult({
    this.azureApiVersion,
    this.extendedLocation,
    this.id,
    this.inventoryItemId,
    this.location,
    this.name,
    this.networkName,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
    this.uuid,
    this.vmmServerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'inventoryItemId': ?inventoryItemId,
      'location': ?location,
      'name': ?name,
      'networkName': ?networkName,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'uuid': ?uuid,
      'vmmServerId': ?vmmServerId,
    };
  }

  factory GetVirtualNetworkResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualNetworkResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inventoryItemId: (() { final guardedValue = map['inventoryItemId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkName: (() { final guardedValue = map['networkName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vmmServerId: (() { final guardedValue = map['vmmServerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
