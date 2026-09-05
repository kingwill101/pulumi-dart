// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_set_network_profile_ip_configuration_public_ip_address_configuration.dart';

class ScaleSetNetworkProfileIpConfiguration {
  /// Specifies an array of references to backend address pools of application gateways. A scale set can reference backend address pools of multiple application gateways. Multiple scale sets can use the same application gateway.
  final pulumi.Input<List<String>?>? applicationGatewayBackendAddressPoolIds;
  /// Specifies up to `20` application security group IDs.
  final pulumi.Input<List<String>?>? applicationSecurityGroupIds;
  /// Specifies an array of references to backend address pools of load balancers. A scale set can reference backend address pools of one public and one internal load balancer. Multiple scale sets cannot use the same load balancer.
  ///
  /// &gt; **NOTE:** When using this field you'll also need to configure a Rule for the Load Balancer, and use a `dependsOn` between this resource and the Load Balancer Rule.
  final pulumi.Input<List<String>?>? loadBalancerBackendAddressPoolIds;
  /// Specifies an array of references to inbound NAT pools for load balancers. A scale set can reference inbound NAT pools of one public and one internal load balancer. Multiple scale sets cannot use the same load balancer.
  ///
  /// &gt; **NOTE:** When using this field you'll also need to configure a Rule for the Load Balancer, and use a `dependsOn` between this resource and the Load Balancer Rule.
  final pulumi.Input<List<String>?>? loadBalancerInboundNatRulesIds;
  /// Specifies name of the IP configuration.
  final pulumi.Input<String> name;
  /// Specifies if this ipConfiguration is the primary one.
  final pulumi.Input<bool> primary;
  /// Describes a virtual machines scale set IP Configuration's PublicIPAddress configuration. The `publicIpAddressConfiguration` block is documented below.
  final pulumi.Input<ScaleSetNetworkProfileIpConfigurationPublicIpAddressConfiguration?>? publicIpAddressConfiguration;
  /// Specifies the identifier of the subnet.
  final pulumi.Input<String> subnetId;

  /// Creates a new [ScaleSetNetworkProfileIpConfiguration].
  /// [applicationGatewayBackendAddressPoolIds] Specifies an array of references to backend address pools of application gateways. A scale set can reference backend address pools of multiple application gateways. Multiple scale sets can use the same application gateway.
  /// [applicationSecurityGroupIds] Specifies up to `20` application security group IDs.
  /// [loadBalancerBackendAddressPoolIds] Specifies an array of references to backend address pools of load balancers. A scale set can reference backend address pools of one public and one internal load balancer. Multiple scale sets cannot use the same load balancer.
  /// [loadBalancerInboundNatRulesIds] Specifies an array of references to inbound NAT pools for load balancers. A scale set can reference inbound NAT pools of one public and one internal load balancer. Multiple scale sets cannot use the same load balancer.
  /// [name] Specifies name of the IP configuration.
  /// [primary] Specifies if this ipConfiguration is the primary one.
  /// [publicIpAddressConfiguration] Describes a virtual machines scale set IP Configuration's PublicIPAddress configuration. The `publicIpAddressConfiguration` block is documented below.
  /// [subnetId] Specifies the identifier of the subnet.
  const ScaleSetNetworkProfileIpConfiguration({
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
      'publicIpAddressConfiguration': ?pulumi.Input.mapOptionalInputValue<ScaleSetNetworkProfileIpConfigurationPublicIpAddressConfiguration, Map<String, dynamic>>(publicIpAddressConfiguration, (value) => value.toMap()),
      'subnetId': subnetId,
    };
  }

  factory ScaleSetNetworkProfileIpConfiguration.fromMap(Map<String, dynamic> map) {
    return ScaleSetNetworkProfileIpConfiguration(
      applicationGatewayBackendAddressPoolIds: (() { final guardedValue = map['applicationGatewayBackendAddressPoolIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      applicationSecurityGroupIds: (() { final guardedValue = map['applicationSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loadBalancerBackendAddressPoolIds: (() { final guardedValue = map['loadBalancerBackendAddressPoolIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loadBalancerInboundNatRulesIds: (() { final guardedValue = map['loadBalancerInboundNatRulesIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      primary: pulumi.Input.fromValue(map['primary'] as bool),
      publicIpAddressConfiguration: (() { final guardedValue = map['publicIpAddressConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleSetNetworkProfileIpConfigurationPublicIpAddressConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
