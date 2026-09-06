// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_tap_response.dart';

/// Tap configuration in a Network Interface
class NetworkInterfaceTapConfigurationInterfaceEndpointResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String?>? etag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// The provisioning state of the network interface tap configuration. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String> provisioningState;
  /// Sub Resource type.
  final pulumi.Input<String> type;
  /// The reference of the Virtual Network Tap resource.
  final pulumi.Input<VirtualNetworkTapResponse?>? virtualNetworkTap;

  /// Creates a new [NetworkInterfaceTapConfigurationInterfaceEndpointResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [provisioningState] The provisioning state of the network interface tap configuration. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [type] Sub Resource type.
  /// [virtualNetworkTap] The reference of the Virtual Network Tap resource.
  const NetworkInterfaceTapConfigurationInterfaceEndpointResponse({
    this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    required this.type,
    this.virtualNetworkTap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
      'virtualNetworkTap': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkTapResponse, Map<String, dynamic>>(virtualNetworkTap, (value) => value.toMap()),
    };
  }

  factory NetworkInterfaceTapConfigurationInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceTapConfigurationInterfaceEndpointResponse(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      virtualNetworkTap: (() { final guardedValue = map['virtualNetworkTap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkTapResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
