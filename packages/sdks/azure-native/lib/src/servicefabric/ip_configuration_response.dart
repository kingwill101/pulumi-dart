// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_configuration_response_public_ipaddress_configuration.dart';
import 'sub_resource_response.dart';

/// Specifies an IP configuration of the network interface.
class IpConfigurationResponse {
  /// Specifies an array of references to backend address pools of application gateways. A node type can reference backend address pools of multiple application gateways. Multiple node types cannot use the same application gateway.
  final List<SubResourceResponse>? applicationGatewayBackendAddressPools;
  /// Specifies an array of references to backend address pools of load balancers. A node type can reference backend address pools of one public and one internal load balancer. Multiple node types cannot use the same basic sku load balancer.
  final List<SubResourceResponse>? loadBalancerBackendAddressPools;
  /// Specifies an array of references to inbound Nat pools of the load balancers. A node type can reference inbound nat pools of one public and one internal load balancer. Multiple node types cannot use the same basic sku load balancer.
  final List<SubResourceResponse>? loadBalancerInboundNatPools;
  /// Name of the network interface.
  final String name;
  /// Specifies whether the IP configuration's private IP is IPv4 or IPv6. Default is IPv4.
  final String? privateIPAddressVersion;
  /// The public IP address configuration of the network interface.
  final IpConfigurationResponsePublicIPAddressConfiguration? publicIPAddressConfiguration;
  /// Specifies the subnet of the network interface.
  final SubResourceResponse? subnet;

  /// Creates a new [IpConfigurationResponse].
  /// [applicationGatewayBackendAddressPools] Specifies an array of references to backend address pools of application gateways. A node type can reference backend address pools of multiple application gateways. Multiple node types cannot use the same application gateway.
  /// [loadBalancerBackendAddressPools] Specifies an array of references to backend address pools of load balancers. A node type can reference backend address pools of one public and one internal load balancer. Multiple node types cannot use the same basic sku load balancer.
  /// [loadBalancerInboundNatPools] Specifies an array of references to inbound Nat pools of the load balancers. A node type can reference inbound nat pools of one public and one internal load balancer. Multiple node types cannot use the same basic sku load balancer.
  /// [name] Name of the network interface.
  /// [privateIPAddressVersion] Specifies whether the IP configuration's private IP is IPv4 or IPv6. Default is IPv4.
  /// [publicIPAddressConfiguration] The public IP address configuration of the network interface.
  /// [subnet] Specifies the subnet of the network interface.
  IpConfigurationResponse({
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
      'applicationGatewayBackendAddressPools': ?applicationGatewayBackendAddressPools == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(applicationGatewayBackendAddressPools!, (value) => value.toMap()),
      'loadBalancerBackendAddressPools': ?loadBalancerBackendAddressPools == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(loadBalancerBackendAddressPools!, (value) => value.toMap()),
      'loadBalancerInboundNatPools': ?loadBalancerInboundNatPools == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(loadBalancerInboundNatPools!, (value) => value.toMap()),
      'name': name,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'publicIPAddressConfiguration': ?publicIPAddressConfiguration == null ? null : publicIPAddressConfiguration!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory IpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return IpConfigurationResponse(
      applicationGatewayBackendAddressPools: map['applicationGatewayBackendAddressPools'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['applicationGatewayBackendAddressPools'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerBackendAddressPools: map['loadBalancerBackendAddressPools'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['loadBalancerBackendAddressPools'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerInboundNatPools: map['loadBalancerInboundNatPools'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['loadBalancerInboundNatPools'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      privateIPAddressVersion: map['privateIPAddressVersion'] == null ? null : map['privateIPAddressVersion'] as String,
      publicIPAddressConfiguration: map['publicIPAddressConfiguration'] == null ? null : IpConfigurationResponsePublicIPAddressConfiguration.fromMap((map['publicIPAddressConfiguration'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : SubResourceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

