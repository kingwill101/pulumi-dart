// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontend_ipconfiguration_interface_endpoint_response.dart';
import 'network_interface_ipconfiguration_response.dart';
import 'network_interface_tap_configuration_interface_endpoint_response.dart';

/// Virtual Network Tap resource
class VirtualNetworkTapInterfaceEndpointResponse {
  /// The reference to the private IP address on the internal Load Balancer that will receive the tap
  final pulumi.Input<FrontendIPConfigurationInterfaceEndpointResponse>? destinationLoadBalancerFrontEndIPConfiguration;
  /// The reference to the private IP Address of the collector nic that will receive the tap
  final pulumi.Input<NetworkInterfaceIPConfigurationResponse>? destinationNetworkInterfaceIPConfiguration;
  /// The VXLAN destination port that will receive the tapped traffic.
  final pulumi.Input<int>? destinationPort;
  /// Gets a unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String>? etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Resource name.
  final pulumi.Input<String> name;
  /// Specifies the list of resource IDs for the network interface IP configuration that needs to be tapped.
  final pulumi.Input<List<NetworkInterfaceTapConfigurationInterfaceEndpointResponse>> networkInterfaceTapConfigurations;
  /// The provisioning state of the virtual network tap. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String> provisioningState;
  /// The resourceGuid property of the virtual network tap.
  final pulumi.Input<String> resourceGuid;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Resource type.
  final pulumi.Input<String> type;

  /// Creates a new [VirtualNetworkTapInterfaceEndpointResponse].
  /// [destinationLoadBalancerFrontEndIPConfiguration] The reference to the private IP address on the internal Load Balancer that will receive the tap
  /// [destinationNetworkInterfaceIPConfiguration] The reference to the private IP Address of the collector nic that will receive the tap
  /// [destinationPort] The VXLAN destination port that will receive the tapped traffic.
  /// [etag] Gets a unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [networkInterfaceTapConfigurations] Specifies the list of resource IDs for the network interface IP configuration that needs to be tapped.
  /// [provisioningState] The provisioning state of the virtual network tap. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [resourceGuid] The resourceGuid property of the virtual network tap.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const VirtualNetworkTapInterfaceEndpointResponse({
    this.destinationLoadBalancerFrontEndIPConfiguration,
    this.destinationNetworkInterfaceIPConfiguration,
    this.destinationPort,
    this.etag,
    this.id,
    this.location,
    required this.name,
    required this.networkInterfaceTapConfigurations,
    required this.provisioningState,
    required this.resourceGuid,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationLoadBalancerFrontEndIPConfiguration': ?pulumi.Input.mapOptionalInputValue<FrontendIPConfigurationInterfaceEndpointResponse, Map<String, dynamic>>(destinationLoadBalancerFrontEndIPConfiguration, (value) => value.toMap()),
      'destinationNetworkInterfaceIPConfiguration': ?pulumi.Input.mapOptionalInputValue<NetworkInterfaceIPConfigurationResponse, Map<String, dynamic>>(destinationNetworkInterfaceIPConfiguration, (value) => value.toMap()),
      'destinationPort': ?destinationPort,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': name,
      'networkInterfaceTapConfigurations': pulumi.Input.mapInputValue<List<NetworkInterfaceTapConfigurationInterfaceEndpointResponse>, List<Map<String, dynamic>>>(networkInterfaceTapConfigurations, (value) => pulumi.Input.encodeList<NetworkInterfaceTapConfigurationInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'resourceGuid': resourceGuid,
      'tags': ?tags,
      'type': type,
    };
  }

  factory VirtualNetworkTapInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkTapInterfaceEndpointResponse(
      destinationLoadBalancerFrontEndIPConfiguration: (() { final guardedValue = map['destinationLoadBalancerFrontEndIPConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontendIPConfigurationInterfaceEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationNetworkInterfaceIPConfiguration: (() { final guardedValue = map['destinationNetworkInterfaceIPConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInterfaceIPConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      destinationPort: (() { final guardedValue = map['destinationPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      networkInterfaceTapConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceTapConfigurationInterfaceEndpointResponse>(map['networkInterfaceTapConfigurations']!, (value) => NetworkInterfaceTapConfigurationInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceGuid: pulumi.Input.fromValue(map['resourceGuid'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
