// ignore_for_file: unused_element, unnecessary_cast

import 'scale_set_network_profile_ip_configuration_public_ip_address_configuration.dart';

class ScaleSetNetworkProfileIpConfiguration {
  /// Specifies an array of references to backend address pools of application gateways. A scale set can reference backend address pools of multiple application gateways. Multiple scale sets can use the same application gateway.
  final List<String>? applicationGatewayBackendAddressPoolIds;
  /// Specifies up to `20` application security group IDs.
  final List<String>? applicationSecurityGroupIds;
  /// Specifies an array of references to backend address pools of load balancers. A scale set can reference backend address pools of one public and one internal load balancer. Multiple scale sets cannot use the same load balancer.
  ///
  /// > **NOTE:** When using this field you'll also need to configure a Rule for the Load Balancer, and use a `depends_on` between this resource and the Load Balancer Rule.
  final List<String>? loadBalancerBackendAddressPoolIds;
  /// Specifies an array of references to inbound NAT pools for load balancers. A scale set can reference inbound NAT pools of one public and one internal load balancer. Multiple scale sets cannot use the same load balancer.
  ///
  /// > **NOTE:** When using this field you'll also need to configure a Rule for the Load Balancer, and use a `depends_on` between this resource and the Load Balancer Rule.
  final List<String>? loadBalancerInboundNatRulesIds;
  /// Specifies name of the IP configuration.
  final String name;
  /// Specifies if this ip_configuration is the primary one.
  final bool primary;
  /// Describes a virtual machines scale set IP Configuration's PublicIPAddress configuration. The `public_ip_address_configuration` block is documented below.
  final ScaleSetNetworkProfileIpConfigurationPublicIpAddressConfiguration? publicIpAddressConfiguration;
  /// Specifies the identifier of the subnet.
  final String subnetId;

  /// Creates a new [ScaleSetNetworkProfileIpConfiguration].
  /// [applicationGatewayBackendAddressPoolIds] Specifies an array of references to backend address pools of application gateways. A scale set can reference backend address pools of multiple application gateways. Multiple scale sets can use the same application gateway.
  /// [applicationSecurityGroupIds] Specifies up to `20` application security group IDs.
  /// [loadBalancerBackendAddressPoolIds] Specifies an array of references to backend address pools of load balancers. A scale set can reference backend address pools of one public and one internal load balancer. Multiple scale sets cannot use the same load balancer.
  /// [loadBalancerInboundNatRulesIds] Specifies an array of references to inbound NAT pools for load balancers. A scale set can reference inbound NAT pools of one public and one internal load balancer. Multiple scale sets cannot use the same load balancer.
  /// [name] Specifies name of the IP configuration.
  /// [primary] Specifies if this ip_configuration is the primary one.
  /// [publicIpAddressConfiguration] Describes a virtual machines scale set IP Configuration's PublicIPAddress configuration. The `public_ip_address_configuration` block is documented below.
  /// [subnetId] Specifies the identifier of the subnet.
  ScaleSetNetworkProfileIpConfiguration({
    this.applicationGatewayBackendAddressPoolIds,
    this.applicationSecurityGroupIds,
    this.loadBalancerBackendAddressPoolIds,
    this.loadBalancerInboundNatRulesIds,
    required this.name,
    required this.primary,
    this.publicIpAddressConfiguration,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayBackendAddressPoolIds': ?applicationGatewayBackendAddressPoolIds,
      'applicationSecurityGroupIds': ?applicationSecurityGroupIds,
      'loadBalancerBackendAddressPoolIds': ?loadBalancerBackendAddressPoolIds,
      'loadBalancerInboundNatRulesIds': ?loadBalancerInboundNatRulesIds,
      'name': name,
      'primary': primary,
      'publicIpAddressConfiguration': ?publicIpAddressConfiguration == null ? null : publicIpAddressConfiguration!.toMap(),
      'subnetId': subnetId,
    };
  }

  factory ScaleSetNetworkProfileIpConfiguration.fromMap(Map<String, dynamic> map) {
    return ScaleSetNetworkProfileIpConfiguration(
      applicationGatewayBackendAddressPoolIds: map['applicationGatewayBackendAddressPoolIds'] == null ? null : (map['applicationGatewayBackendAddressPoolIds'] as List).cast<String>(),
      applicationSecurityGroupIds: map['applicationSecurityGroupIds'] == null ? null : (map['applicationSecurityGroupIds'] as List).cast<String>(),
      loadBalancerBackendAddressPoolIds: map['loadBalancerBackendAddressPoolIds'] == null ? null : (map['loadBalancerBackendAddressPoolIds'] as List).cast<String>(),
      loadBalancerInboundNatRulesIds: map['loadBalancerInboundNatRulesIds'] == null ? null : (map['loadBalancerInboundNatRulesIds'] as List).cast<String>(),
      name: map['name'] as String,
      primary: map['primary'] as bool,
      publicIpAddressConfiguration: map['publicIpAddressConfiguration'] == null ? null : ScaleSetNetworkProfileIpConfigurationPublicIpAddressConfiguration.fromMap((map['publicIpAddressConfiguration'] as Map).cast<String, dynamic>()),
      subnetId: map['subnetId'] as String,
    );
  }
}

