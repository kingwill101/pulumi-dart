// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayFrontendIpConfiguration {
  /// The ID of the Rewrite Rule Set
  final pulumi.Input<String> id;
  /// The name of this Application Gateway.
  final pulumi.Input<String> name;
  /// The Static IP Address which is used.
  final pulumi.Input<String> privateIpAddress;
  /// The allocation method used for the Private IP Address.
  final pulumi.Input<String> privateIpAddressAllocation;
  /// The ID of the associated Private Link configuration.
  final pulumi.Input<String> privateLinkConfigurationId;
  /// The name of the Private Link configuration in use by this Frontend IP Configuration.
  final pulumi.Input<String> privateLinkConfigurationName;
  /// The ID of the Public IP Address which the Application Gateway will use.
  final pulumi.Input<String> publicIpAddressId;
  /// The ID of the subnet the private link configuration is connected to.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetApplicationGatewayFrontendIpConfiguration].
  /// [id] The ID of the Rewrite Rule Set
  /// [name] The name of this Application Gateway.
  /// [privateIpAddress] The Static IP Address which is used.
  /// [privateIpAddressAllocation] The allocation method used for the Private IP Address.
  /// [privateLinkConfigurationId] The ID of the associated Private Link configuration.
  /// [privateLinkConfigurationName] The name of the Private Link configuration in use by this Frontend IP Configuration.
  /// [publicIpAddressId] The ID of the Public IP Address which the Application Gateway will use.
  /// [subnetId] The ID of the subnet the private link configuration is connected to.
  const GetApplicationGatewayFrontendIpConfiguration({
    required this.id,
    required this.name,
    required this.privateIpAddress,
    required this.privateIpAddressAllocation,
    required this.privateLinkConfigurationId,
    required this.privateLinkConfigurationName,
    required this.publicIpAddressId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'privateIpAddress': privateIpAddress,
      'privateIpAddressAllocation': privateIpAddressAllocation,
      'privateLinkConfigurationId': privateLinkConfigurationId,
      'privateLinkConfigurationName': privateLinkConfigurationName,
      'publicIpAddressId': publicIpAddressId,
      'subnetId': subnetId,
    };
  }

  factory GetApplicationGatewayFrontendIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayFrontendIpConfiguration(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
      privateIpAddressAllocation: pulumi.Input.fromValue(map['privateIpAddressAllocation'] as String),
      privateLinkConfigurationId: pulumi.Input.fromValue(map['privateLinkConfigurationId'] as String),
      privateLinkConfigurationName: pulumi.Input.fromValue(map['privateLinkConfigurationName'] as String),
      publicIpAddressId: pulumi.Input.fromValue(map['publicIpAddressId'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

