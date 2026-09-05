// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInterfaceIpConfiguration {
  /// The Frontend IP Configuration ID of a Gateway SKU Load Balancer.
  final pulumi.Input<String?>? gatewayLoadBalancerFrontendIpConfigurationId;
  /// A name used for this IP Configuration.
  final pulumi.Input<String> name;
  /// Is this the Primary IP Configuration? Must be `true` for the first `ipConfiguration` when multiple are specified. Defaults to `false`.
  final pulumi.Input<bool?>? primary;
  /// The first private IP address of the network interface.
  final pulumi.Input<String?>? privateIpAddress;
  /// The allocation method used for the Private IP Address. Possible values are `Dynamic` and `Static`.
  ///
  /// &gt; **Note:** `Dynamic` means "An IP is automatically assigned during creation of this Network Interface"; `Static` means "User supplied IP address will be used"
  final pulumi.Input<String> privateIpAddressAllocation;
  /// The IP Version to use. Possible values are `IPv4` or `IPv6`. Defaults to `IPv4`.
  final pulumi.Input<String?>? privateIpAddressVersion;
  /// Reference to a Public IP Address to associate with this NIC
  final pulumi.Input<String?>? publicIpAddressId;
  /// The ID of the Subnet where this Network Interface should be located in.
  ///
  /// &gt; **Note:** This is required when `privateIpAddressVersion` is set to `IPv4`.
  final pulumi.Input<String?>? subnetId;

  /// Creates a new [NetworkInterfaceIpConfiguration].
  /// [gatewayLoadBalancerFrontendIpConfigurationId] The Frontend IP Configuration ID of a Gateway SKU Load Balancer.
  /// [name] A name used for this IP Configuration.
  /// [primary] Is this the Primary IP Configuration? Must be `true` for the first `ipConfiguration` when multiple are specified. Defaults to `false`.
  /// [privateIpAddress] The first private IP address of the network interface.
  /// [privateIpAddressAllocation] The allocation method used for the Private IP Address. Possible values are `Dynamic` and `Static`.
  /// [privateIpAddressVersion] The IP Version to use. Possible values are `IPv4` or `IPv6`. Defaults to `IPv4`.
  /// [publicIpAddressId] Reference to a Public IP Address to associate with this NIC
  /// [subnetId] The ID of the Subnet where this Network Interface should be located in.
  const NetworkInterfaceIpConfiguration({
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
      gatewayLoadBalancerFrontendIpConfigurationId: (() { final guardedValue = map['gatewayLoadBalancerFrontendIpConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddressAllocation: pulumi.Input.fromValue(map['privateIpAddressAllocation'] as String),
      privateIpAddressVersion: (() { final guardedValue = map['privateIpAddressVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIpAddressId: (() { final guardedValue = map['publicIpAddressId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
