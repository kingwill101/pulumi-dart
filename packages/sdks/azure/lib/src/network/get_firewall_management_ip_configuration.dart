// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallManagementIpConfiguration {
  /// The name of the Azure Firewall.
  final pulumi.Input<String> name;
  /// The private IP address associated with the Azure Firewall.
  final pulumi.Input<String> privateIpAddress;
  /// The ID of the Public IP address of the Azure Firewall.
  final pulumi.Input<String> publicIpAddressId;
  /// The ID of the Subnet where the Azure Firewall is deployed.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetFirewallManagementIpConfiguration].
  /// [name] The name of the Azure Firewall.
  /// [privateIpAddress] The private IP address associated with the Azure Firewall.
  /// [publicIpAddressId] The ID of the Public IP address of the Azure Firewall.
  /// [subnetId] The ID of the Subnet where the Azure Firewall is deployed.
  const GetFirewallManagementIpConfiguration({
    required this.name,
    required this.privateIpAddress,
    required this.publicIpAddressId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privateIpAddress': privateIpAddress,
      'publicIpAddressId': publicIpAddressId,
      'subnetId': subnetId,
    };
  }

  factory GetFirewallManagementIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetFirewallManagementIpConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
      publicIpAddressId: pulumi.Input.fromValue(map['publicIpAddressId'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
