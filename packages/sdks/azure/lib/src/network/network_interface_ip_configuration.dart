// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInterfaceIpConfiguration {
  /// The Frontend IP Configuration ID of a Gateway SKU Load Balancer.
  final pulumi.Input<String>? gatewayLoadBalancerFrontendIpConfigurationId;
  /// A name used for this IP Configuration.
  final pulumi.Input<String> name;
  /// Is this the Primary IP Configuration? Must be `true` for the first `ip_configuration` when multiple are specified. Defaults to `false`.
  final pulumi.Input<bool>? primary;
  /// The first private IP address of the network interface.
  final pulumi.Input<String>? privateIpAddress;
  /// The allocation method used for the Private IP Address. Possible values are `Dynamic` and `Static`.
  ///
  /// > **Note:** `Dynamic` means "An IP is automatically assigned during creation of this Network Interface"; `Static` means "User supplied IP address will be used"
  final pulumi.Input<String> privateIpAddressAllocation;
  /// The IP Version to use. Possible values are `IPv4` or `IPv6`. Defaults to `IPv4`.
  final pulumi.Input<String>? privateIpAddressVersion;
  /// Reference to a Public IP Address to associate with this NIC
  final pulumi.Input<String>? publicIpAddressId;
  /// The ID of the Subnet where this Network Interface should be located in.
  ///
  /// > **Note:** This is required when `private_ip_address_version` is set to `IPv4`.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [NetworkInterfaceIpConfiguration].
  /// [gatewayLoadBalancerFrontendIpConfigurationId] The Frontend IP Configuration ID of a Gateway SKU Load Balancer.
  /// [name] A name used for this IP Configuration.
  /// [primary] Is this the Primary IP Configuration? Must be `true` for the first `ip_configuration` when multiple are specified. Defaults to `false`.
  /// [privateIpAddress] The first private IP address of the network interface.
  /// [privateIpAddressAllocation] The allocation method used for the Private IP Address. Possible values are `Dynamic` and `Static`.
  /// [privateIpAddressVersion] The IP Version to use. Possible values are `IPv4` or `IPv6`. Defaults to `IPv4`.
  /// [publicIpAddressId] Reference to a Public IP Address to associate with this NIC
  /// [subnetId] The ID of the Subnet where this Network Interface should be located in.
  NetworkInterfaceIpConfiguration({
    this.gatewayLoadBalancerFrontendIpConfigurationId,
    required this.name,
    this.primary,
    this.privateIpAddress,
    required this.privateIpAddressAllocation,
    this.privateIpAddressVersion,
    this.publicIpAddressId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayLoadBalancerFrontendIpConfigurationId': ?gatewayLoadBalancerFrontendIpConfigurationId,
      'name': name,
      'primary': ?primary,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAddressAllocation': privateIpAddressAllocation,
      'privateIpAddressVersion': ?privateIpAddressVersion,
      'publicIpAddressId': ?publicIpAddressId,
      'subnetId': ?subnetId,
    };
  }

  factory NetworkInterfaceIpConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceIpConfiguration(
      gatewayLoadBalancerFrontendIpConfigurationId: map['gatewayLoadBalancerFrontendIpConfigurationId'] == null ? null : (map['gatewayLoadBalancerFrontendIpConfigurationId'] as String).input(),
      name: (map['name'] as String).input(),
      primary: map['primary'] == null ? null : (map['primary'] as bool).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress'] as String).input(),
      privateIpAddressAllocation: (map['privateIpAddressAllocation'] as String).input(),
      privateIpAddressVersion: map['privateIpAddressVersion'] == null ? null : (map['privateIpAddressVersion'] as String).input(),
      publicIpAddressId: map['publicIpAddressId'] == null ? null : (map['publicIpAddressId'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
    );
  }
}

