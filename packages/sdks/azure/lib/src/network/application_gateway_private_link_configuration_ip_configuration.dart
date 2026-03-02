// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayPrivateLinkConfigurationIpConfiguration {
  /// The name of the IP configuration.
  final pulumi.Input<String> name;
  /// Is this the Primary IP Configuration?
  final pulumi.Input<bool> primary;
  /// The Static IP Address which should be used.
  final pulumi.Input<String>? privateIpAddress;
  /// The allocation method used for the Private IP Address. Possible values are `Dynamic` and `Static`.
  final pulumi.Input<String> privateIpAddressAllocation;
  /// The ID of the subnet the private link configuration should connect to.
  final pulumi.Input<String> subnetId;

  /// Creates a new [ApplicationGatewayPrivateLinkConfigurationIpConfiguration].
  /// [name] The name of the IP configuration.
  /// [primary] Is this the Primary IP Configuration?
  /// [privateIpAddress] The Static IP Address which should be used.
  /// [privateIpAddressAllocation] The allocation method used for the Private IP Address. Possible values are `Dynamic` and `Static`.
  /// [subnetId] The ID of the subnet the private link configuration should connect to.
  ApplicationGatewayPrivateLinkConfigurationIpConfiguration({
    required this.name,
    required this.primary,
    this.privateIpAddress,
    required this.privateIpAddressAllocation,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'primary': primary,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAddressAllocation': privateIpAddressAllocation,
      'subnetId': subnetId,
    };
  }

  factory ApplicationGatewayPrivateLinkConfigurationIpConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayPrivateLinkConfigurationIpConfiguration(
      name: (map['name'] as String).input(),
      primary: (map['primary'] as bool).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress'] as String).input(),
      privateIpAddressAllocation: (map['privateIpAddressAllocation'] as String).input(),
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

