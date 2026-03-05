// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_network_tap_response.dart';

/// Result data returned by getNetworkInterfaceTapConfiguration.
class GetNetworkInterfaceTapConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// The provisioning state of the network interface tap configuration resource.
  final String provisioningState;
  /// Sub Resource type.
  final String type;
  /// The reference to the Virtual Network Tap resource.
  final VirtualNetworkTapResponse? virtualNetworkTap;

  /// Creates a new [GetNetworkInterfaceTapConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the network interface tap configuration resource.
  /// [type] Sub Resource type.
  /// [virtualNetworkTap] The reference to the Virtual Network Tap resource.
  GetNetworkInterfaceTapConfigurationResult({
    required this.azureApiVersion,
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    required this.type,
    this.virtualNetworkTap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
      'virtualNetworkTap': ?virtualNetworkTap?.toMap(),
    };
  }

  factory GetNetworkInterfaceTapConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceTapConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
      virtualNetworkTap: (() { final guardedValue = map['virtualNetworkTap']; if (guardedValue == null) return null; return VirtualNetworkTapResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

