// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_tap_virtual_network_appliance_response.dart';

/// Tap configuration in a Network Interface.
class NetworkInterfaceTapConfigurationVirtualNetworkApplianceResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the network interface tap configuration resource.
  final pulumi.Input<String> provisioningState;
  /// Resource type.
  final pulumi.Input<String> type;
  /// The reference to the Virtual Network Tap resource.
  final pulumi.Input<VirtualNetworkTapVirtualNetworkApplianceResponse>? virtualNetworkTap;

  /// Creates a new [NetworkInterfaceTapConfigurationVirtualNetworkApplianceResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the resource.
  /// [provisioningState] The provisioning state of the network interface tap configuration resource.
  /// [type] Resource type.
  /// [virtualNetworkTap] The reference to the Virtual Network Tap resource.
  const NetworkInterfaceTapConfigurationVirtualNetworkApplianceResponse({
    required this.etag,
    this.id,
    this.name,
    required this.provisioningState,
    required this.type,
    this.virtualNetworkTap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
      'virtualNetworkTap': ?pulumi.Input.mapOptionalInputValue<VirtualNetworkTapVirtualNetworkApplianceResponse, Map<String, dynamic>>(virtualNetworkTap, (value) => value.toMap()),
    };
  }

  factory NetworkInterfaceTapConfigurationVirtualNetworkApplianceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceTapConfigurationVirtualNetworkApplianceResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      virtualNetworkTap: (() { final guardedValue = map['virtualNetworkTap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNetworkTapVirtualNetworkApplianceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
