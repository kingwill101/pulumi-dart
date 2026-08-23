// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_configuration_public_ipaddress_configuration.dart';
import 'sub_resource.dart';

/// Specifies an IP configuration of the network interface.
class IpConfiguration {
  /// Specifies an array of references to backend address pools of application gateways. A node type can reference backend address pools of multiple application gateways. Multiple node types cannot use the same application gateway.
  final pulumi.Input<List<SubResource>>? applicationGatewayBackendAddressPools;
  /// Specifies an array of references to backend address pools of load balancers. A node type can reference backend address pools of one public and one internal load balancer. Multiple node types cannot use the same basic sku load balancer.
  final pulumi.Input<List<SubResource>>? loadBalancerBackendAddressPools;
  /// Specifies an array of references to inbound Nat pools of the load balancers. A node type can reference inbound nat pools of one public and one internal load balancer. Multiple node types cannot use the same basic sku load balancer.
  final pulumi.Input<List<SubResource>>? loadBalancerInboundNatPools;
  /// Name of the network interface.
  final pulumi.Input<String> name;
  /// Specifies whether the IP configuration's private IP is IPv4 or IPv6. Default is IPv4.
  final pulumi.Input<String>? privateIPAddressVersion;
  /// The public IP address configuration of the network interface.
  final pulumi.Input<IpConfigurationPublicIPAddressConfiguration>? publicIPAddressConfiguration;
  /// Specifies the subnet of the network interface.
  final pulumi.Input<SubResource>? subnet;

  /// Creates a new [IpConfiguration].
  /// [applicationGatewayBackendAddressPools] Specifies an array of references to backend address pools of application gateways. A node type can reference backend address pools of multiple application gateways. Multiple node types cannot use the same application gateway.
  /// [loadBalancerBackendAddressPools] Specifies an array of references to backend address pools of load balancers. A node type can reference backend address pools of one public and one internal load balancer. Multiple node types cannot use the same basic sku load balancer.
  /// [loadBalancerInboundNatPools] Specifies an array of references to inbound Nat pools of the load balancers. A node type can reference inbound nat pools of one public and one internal load balancer. Multiple node types cannot use the same basic sku load balancer.
  /// [name] Name of the network interface.
  /// [privateIPAddressVersion] Specifies whether the IP configuration's private IP is IPv4 or IPv6. Default is IPv4.
  /// [publicIPAddressConfiguration] The public IP address configuration of the network interface.
  /// [subnet] Specifies the subnet of the network interface.
  const IpConfiguration({
    this.applicationGatewayBackendAddressPools,
    this.loadBalancerBackendAddressPools,
    this.loadBalancerInboundNatPools,
    required this.name,
    this.privateIPAddressVersion,
    this.publicIPAddressConfiguration,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayBackendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(applicationGatewayBackendAddressPools, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerBackendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(loadBalancerBackendAddressPools, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerInboundNatPools': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(loadBalancerInboundNatPools, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'publicIPAddressConfiguration': ?pulumi.Input.mapOptionalInputValue<IpConfigurationPublicIPAddressConfiguration, Map<String, dynamic>>(publicIPAddressConfiguration, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory IpConfiguration.fromMap(Map<String, dynamic> map) {
    return IpConfiguration(
      applicationGatewayBackendAddressPools: (() { final guardedValue = map['applicationGatewayBackendAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResource>(guardedValue, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loadBalancerBackendAddressPools: (() { final guardedValue = map['loadBalancerBackendAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResource>(guardedValue, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loadBalancerInboundNatPools: (() { final guardedValue = map['loadBalancerInboundNatPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResource>(guardedValue, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateIPAddressVersion: (() { final guardedValue = map['privateIPAddressVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIPAddressConfiguration: (() { final guardedValue = map['publicIPAddressConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IpConfigurationPublicIPAddressConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
