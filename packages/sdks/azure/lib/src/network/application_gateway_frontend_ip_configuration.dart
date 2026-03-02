// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayFrontendIpConfiguration {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String>? id;
  /// The name of the Frontend IP Configuration.
  final pulumi.Input<String> name;
  /// The Private IP Address to use for the Application Gateway.
  final pulumi.Input<String>? privateIpAddress;
  /// The Allocation Method for the Private IP Address. Possible values are `Dynamic` and `Static`. Defaults to `Dynamic`.
  final pulumi.Input<String>? privateIpAddressAllocation;
  /// The ID of the associated private link configuration.
  final pulumi.Input<String>? privateLinkConfigurationId;
  /// The name of the private link configuration to use for this frontend IP configuration.
  final pulumi.Input<String>? privateLinkConfigurationName;
  /// The ID of a Public IP Address which the Application Gateway should use. The allocation method for the Public IP Address depends on the `sku` of this Application Gateway. Please refer to the [Azure documentation for public IP addresses](https://docs.microsoft.com/azure/virtual-network/public-ip-addresses#application-gateways) for details.
  final pulumi.Input<String>? publicIpAddressId;
  /// The ID of the Subnet.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [ApplicationGatewayFrontendIpConfiguration].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of the Frontend IP Configuration.
  /// [privateIpAddress] The Private IP Address to use for the Application Gateway.
  /// [privateIpAddressAllocation] The Allocation Method for the Private IP Address. Possible values are `Dynamic` and `Static`. Defaults to `Dynamic`.
  /// [privateLinkConfigurationId] The ID of the associated private link configuration.
  /// [privateLinkConfigurationName] The name of the private link configuration to use for this frontend IP configuration.
  /// [publicIpAddressId] The ID of a Public IP Address which the Application Gateway should use. The allocation method for the Public IP Address depends on the `sku` of this Application Gateway. Please refer to the [Azure documentation for public IP addresses](https://docs.microsoft.com/azure/virtual-network/public-ip-addresses#application-gateways) for details.
  /// [subnetId] The ID of the Subnet.
  ApplicationGatewayFrontendIpConfiguration({
    this.id,
    required this.name,
    this.privateIpAddress,
    this.privateIpAddressAllocation,
    this.privateLinkConfigurationId,
    this.privateLinkConfigurationName,
    this.publicIpAddressId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': name,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAddressAllocation': ?privateIpAddressAllocation,
      'privateLinkConfigurationId': ?privateLinkConfigurationId,
      'privateLinkConfigurationName': ?privateLinkConfigurationName,
      'publicIpAddressId': ?publicIpAddressId,
      'subnetId': ?subnetId,
    };
  }

  factory ApplicationGatewayFrontendIpConfiguration.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayFrontendIpConfiguration(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: (map['name'] as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress']! as String).input(),
      privateIpAddressAllocation: map['privateIpAddressAllocation'] == null ? null : (map['privateIpAddressAllocation']! as String).input(),
      privateLinkConfigurationId: map['privateLinkConfigurationId'] == null ? null : (map['privateLinkConfigurationId']! as String).input(),
      privateLinkConfigurationName: map['privateLinkConfigurationName'] == null ? null : (map['privateLinkConfigurationName']! as String).input(),
      publicIpAddressId: map['publicIpAddressId'] == null ? null : (map['publicIpAddressId']! as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
    );
  }
}

