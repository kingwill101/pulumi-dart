// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayPrivateLinkConfigurationIpConfiguration {
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;

  /// Is this the Primary IP Configuration?
  final pulumi.Input<bool> primary;

  /// The Static IP Address which is used.
  final pulumi.Input<String> privateIpAddress;

  /// The allocation method used for the Private IP Address.
  final pulumi.Input<String> privateIpAddressAllocation;

  /// The ID of the subnet the private link configuration is connected to.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetApplicationGatewayPrivateLinkConfigurationIpConfiguration].
  /// [name] The name of this Application Gateway.
  /// [primary] Is this the Primary IP Configuration?
  /// [privateIpAddress] The Static IP Address which is used.
  /// [privateIpAddressAllocation] The allocation method used for the Private IP Address.
  /// [subnetId] The ID of the subnet the private link configuration is connected to.
  GetApplicationGatewayPrivateLinkConfigurationIpConfiguration({
    required this.name,
    required this.primary,
    required this.privateIpAddress,
    required this.privateIpAddressAllocation,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'primary': primary,
      'privateIpAddress': privateIpAddress,
      'privateIpAddressAllocation': privateIpAddressAllocation,
      'subnetId': subnetId,
    };
  }

  factory GetApplicationGatewayPrivateLinkConfigurationIpConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetApplicationGatewayPrivateLinkConfigurationIpConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      primary: pulumi.Input.fromValue(map['primary'] as bool),
      privateIpAddress: pulumi.Input.fromValue(
        map['privateIpAddress'] as String,
      ),
      privateIpAddressAllocation: pulumi.Input.fromValue(
        map['privateIpAddressAllocation'] as String,
      ),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
