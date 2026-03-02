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
  IpConfiguration({
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
      applicationGatewayBackendAddressPools: map['applicationGatewayBackendAddressPools'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['applicationGatewayBackendAddressPools']!, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancerBackendAddressPools: map['loadBalancerBackendAddressPools'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['loadBalancerBackendAddressPools']!, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancerInboundNatPools: map['loadBalancerInboundNatPools'] == null ? null : (pulumi.Input.decodeList<SubResource>(map['loadBalancerInboundNatPools']!, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
      privateIPAddressVersion: map['privateIPAddressVersion'] == null ? null : (map['privateIPAddressVersion']! as String).input(),
      publicIPAddressConfiguration: map['publicIPAddressConfiguration'] == null ? null : (IpConfigurationPublicIPAddressConfiguration.fromMap((map['publicIPAddressConfiguration']! as Map).cast<String, dynamic>())).input(),
      subnet: map['subnet'] == null ? null : (SubResource.fromMap((map['subnet']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

