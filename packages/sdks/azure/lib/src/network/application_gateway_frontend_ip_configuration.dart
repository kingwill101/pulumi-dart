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

  factory ApplicationGatewayFrontendIpConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationGatewayFrontendIpConfiguration(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateIpAddress: (() {
        final guardedValue = map['privateIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIpAddressAllocation: (() {
        final guardedValue = map['privateIpAddressAllocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateLinkConfigurationId: (() {
        final guardedValue = map['privateLinkConfigurationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateLinkConfigurationName: (() {
        final guardedValue = map['privateLinkConfigurationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicIpAddressId: (() {
        final guardedValue = map['publicIpAddressId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
