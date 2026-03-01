// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_backend_address_pool.dart';
import 'application_security_group.dart';
import 'backend_address_pool.dart';
import 'inbound_nat_rule.dart';
import 'public_ipaddress.dart';
import 'sub_resource.dart';
import 'subnet.dart';
import 'virtual_network_tap.dart';

/// IPConfiguration in a network interface.
class NetworkInterfaceIPConfiguration {
  /// The reference to ApplicationGatewayBackendAddressPool resource.
  final List<ApplicationGatewayBackendAddressPool>? applicationGatewayBackendAddressPools;
  /// Application security groups in which the IP configuration is included.
  final List<ApplicationSecurityGroup>? applicationSecurityGroups;
  /// The reference to gateway load balancer frontend IP.
  final SubResource? gatewayLoadBalancer;
  /// Resource ID.
  final String? id;
  /// The reference to LoadBalancerBackendAddressPool resource.
  final List<BackendAddressPool>? loadBalancerBackendAddressPools;
  /// A list of references of LoadBalancerInboundNatRules.
  final List<InboundNatRule>? loadBalancerInboundNatRules;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Whether this is a primary customer address on the network interface.
  final bool? primary;
  /// Private IP address of the IP configuration. It can be a single IP address or a CIDR block in the format <address>/<prefix-length>.
  final String? privateIPAddress;
  /// The private IP address prefix length. If specified and the allocation method is dynamic, the service will allocate a CIDR block instead of a single IP address.
  final int? privateIPAddressPrefixLength;
  /// Whether the specific IP configuration is IPv4 or IPv6. Default is IPv4.
  final String? privateIPAddressVersion;
  /// The private IP address allocation method.
  final String? privateIPAllocationMethod;
  /// Public IP address bound to the IP configuration.
  final PublicIPAddress? publicIPAddress;
  /// Subnet bound to the IP configuration.
  final Subnet? subnet;
  /// Resource type.
  final String? type;
  /// The reference to Virtual Network Taps.
  final List<VirtualNetworkTap>? virtualNetworkTaps;

  /// Creates a new [NetworkInterfaceIPConfiguration].
  /// [applicationGatewayBackendAddressPools] The reference to ApplicationGatewayBackendAddressPool resource.
  /// [applicationSecurityGroups] Application security groups in which the IP configuration is included.
  /// [gatewayLoadBalancer] The reference to gateway load balancer frontend IP.
  /// [id] Resource ID.
  /// [loadBalancerBackendAddressPools] The reference to LoadBalancerBackendAddressPool resource.
  /// [loadBalancerInboundNatRules] A list of references of LoadBalancerInboundNatRules.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [primary] Whether this is a primary customer address on the network interface.
  /// [privateIPAddress] Private IP address of the IP configuration. It can be a single IP address or a CIDR block in the format <address>/<prefix-length>.
  /// [privateIPAddressPrefixLength] The private IP address prefix length. If specified and the allocation method is dynamic, the service will allocate a CIDR block instead of a single IP address.
  /// [privateIPAddressVersion] Whether the specific IP configuration is IPv4 or IPv6. Default is IPv4.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [publicIPAddress] Public IP address bound to the IP configuration.
  /// [subnet] Subnet bound to the IP configuration.
  /// [type] Resource type.
  /// [virtualNetworkTaps] The reference to Virtual Network Taps.
  NetworkInterfaceIPConfiguration({
    this.applicationGatewayBackendAddressPools,
    this.applicationSecurityGroups,
    this.gatewayLoadBalancer,
    this.id,
    this.loadBalancerBackendAddressPools,
    this.loadBalancerInboundNatRules,
    this.name,
    this.primary,
    this.privateIPAddress,
    this.privateIPAddressPrefixLength,
    this.privateIPAddressVersion,
    this.privateIPAllocationMethod,
    this.publicIPAddress,
    this.subnet,
    this.type,
    this.virtualNetworkTaps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayBackendAddressPools': ?applicationGatewayBackendAddressPools == null ? null : pulumi.Input.encodeList<ApplicationGatewayBackendAddressPool, Map<String, dynamic>>(applicationGatewayBackendAddressPools!, (value) => value.toMap()),
      'applicationSecurityGroups': ?applicationSecurityGroups == null ? null : pulumi.Input.encodeList<ApplicationSecurityGroup, Map<String, dynamic>>(applicationSecurityGroups!, (value) => value.toMap()),
      'gatewayLoadBalancer': ?gatewayLoadBalancer == null ? null : gatewayLoadBalancer!.toMap(),
      'id': ?id,
      'loadBalancerBackendAddressPools': ?loadBalancerBackendAddressPools == null ? null : pulumi.Input.encodeList<BackendAddressPool, Map<String, dynamic>>(loadBalancerBackendAddressPools!, (value) => value.toMap()),
      'loadBalancerInboundNatRules': ?loadBalancerInboundNatRules == null ? null : pulumi.Input.encodeList<InboundNatRule, Map<String, dynamic>>(loadBalancerInboundNatRules!, (value) => value.toMap()),
      'name': ?name,
      'primary': ?primary,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAddressPrefixLength': ?privateIPAddressPrefixLength,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'publicIPAddress': ?publicIPAddress == null ? null : publicIPAddress!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'type': ?type,
      'virtualNetworkTaps': ?virtualNetworkTaps == null ? null : pulumi.Input.encodeList<VirtualNetworkTap, Map<String, dynamic>>(virtualNetworkTaps!, (value) => value.toMap()),
    };
  }

  factory NetworkInterfaceIPConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceIPConfiguration(
      applicationGatewayBackendAddressPools: map['applicationGatewayBackendAddressPools'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayBackendAddressPool>(map['applicationGatewayBackendAddressPools'], (value) => ApplicationGatewayBackendAddressPool.fromMap((value as Map).cast<String, dynamic>())),
      applicationSecurityGroups: map['applicationSecurityGroups'] == null ? null : pulumi.Input.decodeList<ApplicationSecurityGroup>(map['applicationSecurityGroups'], (value) => ApplicationSecurityGroup.fromMap((value as Map).cast<String, dynamic>())),
      gatewayLoadBalancer: map['gatewayLoadBalancer'] == null ? null : SubResource.fromMap((map['gatewayLoadBalancer'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      loadBalancerBackendAddressPools: map['loadBalancerBackendAddressPools'] == null ? null : pulumi.Input.decodeList<BackendAddressPool>(map['loadBalancerBackendAddressPools'], (value) => BackendAddressPool.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerInboundNatRules: map['loadBalancerInboundNatRules'] == null ? null : pulumi.Input.decodeList<InboundNatRule>(map['loadBalancerInboundNatRules'], (value) => InboundNatRule.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      primary: map['primary'] == null ? null : map['primary'] as bool,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAddressPrefixLength: map['privateIPAddressPrefixLength'] == null ? null : map['privateIPAddressPrefixLength'] as int,
      privateIPAddressVersion: map['privateIPAddressVersion'] == null ? null : map['privateIPAddressVersion'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      publicIPAddress: map['publicIPAddress'] == null ? null : PublicIPAddress.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : Subnet.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
      virtualNetworkTaps: map['virtualNetworkTaps'] == null ? null : pulumi.Input.decodeList<VirtualNetworkTap>(map['virtualNetworkTaps'], (value) => VirtualNetworkTap.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

