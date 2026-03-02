// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The virtual network appliance ip configuration.
class VirtualNetworkApplianceIpConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of virtual network appliance ip configuration.
  final pulumi.Input<String>? name;
  /// Whether the ip configuration is primary or not.
  final pulumi.Input<bool>? primary;
  /// The private IP address of the IP configuration.
  final pulumi.Input<String>? privateIPAddress;
  /// Whether the specific IP configuration is IPv4 or IPv6. Default is IPv4.
  final pulumi.Input<String>? privateIPAddressVersion;
  /// The private IP address allocation method.
  final pulumi.Input<String>? privateIPAllocationMethod;
  /// The provisioning state of the private link service IP configuration resource.
  final pulumi.Input<String> provisioningState;
  /// The resource type.
  final pulumi.Input<String> type;

  /// Creates a new [VirtualNetworkApplianceIpConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of virtual network appliance ip configuration.
  /// [primary] Whether the ip configuration is primary or not.
  /// [privateIPAddress] The private IP address of the IP configuration.
  /// [privateIPAddressVersion] Whether the specific IP configuration is IPv4 or IPv6. Default is IPv4.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [provisioningState] The provisioning state of the private link service IP configuration resource.
  /// [type] The resource type.
  VirtualNetworkApplianceIpConfigurationResponse({
    required this.etag,
    this.id,
    this.name,
    this.primary,
    this.privateIPAddress,
    this.privateIPAddressVersion,
    this.privateIPAllocationMethod,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'primary': ?primary,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory VirtualNetworkApplianceIpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkApplianceIpConfigurationResponse(
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      primary: map['primary'] == null ? null : (map['primary']! as bool).input(),
      privateIPAddress: map['privateIPAddress'] == null ? null : (map['privateIPAddress']! as String).input(),
      privateIPAddressVersion: map['privateIPAddressVersion'] == null ? null : (map['privateIPAddressVersion']! as String).input(),
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : (map['privateIPAllocationMethod']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

