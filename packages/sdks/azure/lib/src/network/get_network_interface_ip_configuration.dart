// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkInterfaceIpConfiguration {
  /// A list of Backend Address Pool IDs within a Application Gateway that this Network Interface is connected to.
  final List<String> applicationGatewayBackendAddressPoolsIds;
  final List<String> applicationSecurityGroupIds;
  /// The Frontend IP Configuration ID of a Gateway SKU Load Balancer the Network Interface is consuming.
  final String gatewayLoadBalancerFrontendIpConfigurationId;
  /// A list of Backend Address Pool IDs within a Load Balancer that this Network Interface is connected to.
  final List<String> loadBalancerBackendAddressPoolsIds;
  /// A list of Inbound NAT Rule IDs within a Load Balancer that this Network Interface is connected to.
  final List<String> loadBalancerInboundNatRulesIds;
  /// Specifies the name of the Network Interface.
  final String name;
  /// is this the Primary IP Configuration for this Network Interface?
  final bool primary;
  /// The Private IP Address assigned to this Network Interface.
  final String privateIpAddress;
  /// The IP Address allocation type for the Private address, such as `Dynamic` or `Static`.
  final String privateIpAddressAllocation;
  final String privateIpAddressVersion;
  /// The ID of the Public IP Address which is connected to this Network Interface.
  final String publicIpAddressId;
  /// The ID of the Subnet which the Network Interface is connected to.
  final String subnetId;

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
      applicationGatewayBackendAddressPoolsIds: (map['applicationGatewayBackendAddressPoolsIds'] as List).cast<String>(),
      applicationSecurityGroupIds: (map['applicationSecurityGroupIds'] as List).cast<String>(),
      gatewayLoadBalancerFrontendIpConfigurationId: map['gatewayLoadBalancerFrontendIpConfigurationId'] as String,
      loadBalancerBackendAddressPoolsIds: (map['loadBalancerBackendAddressPoolsIds'] as List).cast<String>(),
      loadBalancerInboundNatRulesIds: (map['loadBalancerInboundNatRulesIds'] as List).cast<String>(),
      name: map['name'] as String,
      primary: map['primary'] as bool,
      privateIpAddress: map['privateIpAddress'] as String,
      privateIpAddressAllocation: map['privateIpAddressAllocation'] as String,
      privateIpAddressVersion: map['privateIpAddressVersion'] as String,
      publicIpAddressId: map['publicIpAddressId'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

