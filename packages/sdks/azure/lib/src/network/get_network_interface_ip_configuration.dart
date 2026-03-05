// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInterfaceIpConfiguration {
  /// A list of Backend Address Pool IDs within a Application Gateway that this Network Interface is connected to.
  final pulumi.Input<List<String>> applicationGatewayBackendAddressPoolsIds;
  final pulumi.Input<List<String>> applicationSecurityGroupIds;
  /// The Frontend IP Configuration ID of a Gateway SKU Load Balancer the Network Interface is consuming.
  final pulumi.Input<String> gatewayLoadBalancerFrontendIpConfigurationId;
  /// A list of Backend Address Pool IDs within a Load Balancer that this Network Interface is connected to.
  final pulumi.Input<List<String>> loadBalancerBackendAddressPoolsIds;
  /// A list of Inbound NAT Rule IDs within a Load Balancer that this Network Interface is connected to.
  final pulumi.Input<List<String>> loadBalancerInboundNatRulesIds;
  /// Specifies the name of the Network Interface.
  final pulumi.Input<String> name;
  /// is this the Primary IP Configuration for this Network Interface?
  final pulumi.Input<bool> primary;
  /// The Private IP Address assigned to this Network Interface.
  final pulumi.Input<String> privateIpAddress;
  /// The IP Address allocation type for the Private address, such as `Dynamic` or `Static`.
  final pulumi.Input<String> privateIpAddressAllocation;
  final pulumi.Input<String> privateIpAddressVersion;
  /// The ID of the Public IP Address which is connected to this Network Interface.
  final pulumi.Input<String> publicIpAddressId;
  /// The ID of the Subnet which the Network Interface is connected to.
  final pulumi.Input<String> subnetId;

  /// Creates a new [GetNetworkInterfaceIpConfiguration].
  /// [applicationGatewayBackendAddressPoolsIds] A list of Backend Address Pool IDs within a Application Gateway that this Network Interface is connected to.
  /// [applicationSecurityGroupIds] Required.
  /// [gatewayLoadBalancerFrontendIpConfigurationId] The Frontend IP Configuration ID of a Gateway SKU Load Balancer the Network Interface is consuming.
  /// [loadBalancerBackendAddressPoolsIds] A list of Backend Address Pool IDs within a Load Balancer that this Network Interface is connected to.
  /// [loadBalancerInboundNatRulesIds] A list of Inbound NAT Rule IDs within a Load Balancer that this Network Interface is connected to.
  /// [name] Specifies the name of the Network Interface.
  /// [primary] is this the Primary IP Configuration for this Network Interface?
  /// [privateIpAddress] The Private IP Address assigned to this Network Interface.
  /// [privateIpAddressAllocation] The IP Address allocation type for the Private address, such as `Dynamic` or `Static`.
  /// [privateIpAddressVersion] Required.
  /// [publicIpAddressId] The ID of the Public IP Address which is connected to this Network Interface.
  /// [subnetId] The ID of the Subnet which the Network Interface is connected to.
  GetNetworkInterfaceIpConfiguration({
    required this.applicationGatewayBackendAddressPoolsIds,
    required this.applicationSecurityGroupIds,
    required this.gatewayLoadBalancerFrontendIpConfigurationId,
    required this.loadBalancerBackendAddressPoolsIds,
    required this.loadBalancerInboundNatRulesIds,
    required this.name,
    required this.primary,
    required this.privateIpAddress,
    required this.privateIpAddressAllocation,
    required this.privateIpAddressVersion,
    required this.publicIpAddressId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayBackendAddressPoolsIds': applicationGatewayBackendAddressPoolsIds,
      'applicationSecurityGroupIds': applicationSecurityGroupIds,
      'gatewayLoadBalancerFrontendIpConfigurationId': gatewayLoadBalancerFrontendIpConfigurationId,
      'loadBalancerBackendAddressPoolsIds': loadBalancerBackendAddressPoolsIds,
      'loadBalancerInboundNatRulesIds': loadBalancerInboundNatRulesIds,
      'name': name,
      'primary': primary,
      'privateIpAddress': privateIpAddress,
      'privateIpAddressAllocation': privateIpAddressAllocation,
      'privateIpAddressVersion': privateIpAddressVersion,
      'publicIpAddressId': publicIpAddressId,
      'subnetId': subnetId,
    };
  }

  factory GetNetworkInterfaceIpConfiguration.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceIpConfiguration(
      applicationGatewayBackendAddressPoolsIds: pulumi.Input.fromValue((map['applicationGatewayBackendAddressPoolsIds'] as List).cast<String>()),
      applicationSecurityGroupIds: pulumi.Input.fromValue((map['applicationSecurityGroupIds'] as List).cast<String>()),
      gatewayLoadBalancerFrontendIpConfigurationId: pulumi.Input.fromValue(map['gatewayLoadBalancerFrontendIpConfigurationId'] as String),
      loadBalancerBackendAddressPoolsIds: pulumi.Input.fromValue((map['loadBalancerBackendAddressPoolsIds'] as List).cast<String>()),
      loadBalancerInboundNatRulesIds: pulumi.Input.fromValue((map['loadBalancerInboundNatRulesIds'] as List).cast<String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      primary: pulumi.Input.fromValue(map['primary'] as bool),
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
      privateIpAddressAllocation: pulumi.Input.fromValue(map['privateIpAddressAllocation'] as String),
      privateIpAddressVersion: pulumi.Input.fromValue(map['privateIpAddressVersion'] as String),
      publicIpAddressId: pulumi.Input.fromValue(map['publicIpAddressId'] as String),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}

