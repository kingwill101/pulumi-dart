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
  final pulumi.Input<List<ApplicationGatewayBackendAddressPool>>? applicationGatewayBackendAddressPools;
  /// Application security groups in which the IP configuration is included.
  final pulumi.Input<List<ApplicationSecurityGroup>>? applicationSecurityGroups;
  /// The reference to gateway load balancer frontend IP.
  final pulumi.Input<SubResource>? gatewayLoadBalancer;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The reference to LoadBalancerBackendAddressPool resource.
  final pulumi.Input<List<BackendAddressPool>>? loadBalancerBackendAddressPools;
  /// A list of references of LoadBalancerInboundNatRules.
  final pulumi.Input<List<InboundNatRule>>? loadBalancerInboundNatRules;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Whether this is a primary customer address on the network interface.
  final pulumi.Input<bool>? primary;
  /// Private IP address of the IP configuration. It can be a single IP address or a CIDR block in the format <address>/<prefix-length>.
  final pulumi.Input<String>? privateIPAddress;
  /// The private IP address prefix length. If specified and the allocation method is dynamic, the service will allocate a CIDR block instead of a single IP address.
  final pulumi.Input<int>? privateIPAddressPrefixLength;
  /// Whether the specific IP configuration is IPv4 or IPv6. Default is IPv4.
  final pulumi.Input<String>? privateIPAddressVersion;
  /// The private IP address allocation method.
  final pulumi.Input<String>? privateIPAllocationMethod;
  /// Public IP address bound to the IP configuration.
  final pulumi.Input<PublicIPAddress>? publicIPAddress;
  /// Subnet bound to the IP configuration.
  final pulumi.Input<Subnet>? subnet;
  /// Resource type.
  final pulumi.Input<String>? type;
  /// The reference to Virtual Network Taps.
  final pulumi.Input<List<VirtualNetworkTap>>? virtualNetworkTaps;

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
      'applicationGatewayBackendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayBackendAddressPool>, List<Map<String, dynamic>>>(applicationGatewayBackendAddressPools, (value) => pulumi.Input.encodeList<ApplicationGatewayBackendAddressPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationSecurityGroups': ?pulumi.Input.mapOptionalInputValue<List<ApplicationSecurityGroup>, List<Map<String, dynamic>>>(applicationSecurityGroups, (value) => pulumi.Input.encodeList<ApplicationSecurityGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gatewayLoadBalancer': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(gatewayLoadBalancer, (value) => value.toMap()),
      'id': ?id,
      'loadBalancerBackendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<BackendAddressPool>, List<Map<String, dynamic>>>(loadBalancerBackendAddressPools, (value) => pulumi.Input.encodeList<BackendAddressPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerInboundNatRules': ?pulumi.Input.mapOptionalInputValue<List<InboundNatRule>, List<Map<String, dynamic>>>(loadBalancerInboundNatRules, (value) => pulumi.Input.encodeList<InboundNatRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'primary': ?primary,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAddressPrefixLength': ?privateIPAddressPrefixLength,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'publicIPAddress': ?pulumi.Input.mapOptionalInputValue<PublicIPAddress, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<Subnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'type': ?type,
      'virtualNetworkTaps': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkTap>, List<Map<String, dynamic>>>(virtualNetworkTaps, (value) => pulumi.Input.encodeList<VirtualNetworkTap, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkInterfaceIPConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceIPConfiguration(
      applicationGatewayBackendAddressPools: map['applicationGatewayBackendAddressPools'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayBackendAddressPool>(map['applicationGatewayBackendAddressPools'], (value) => ApplicationGatewayBackendAddressPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      applicationSecurityGroups: map['applicationSecurityGroups'] == null ? null : (pulumi.Input.decodeList<ApplicationSecurityGroup>(map['applicationSecurityGroups'], (value) => ApplicationSecurityGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      gatewayLoadBalancer: map['gatewayLoadBalancer'] == null ? null : (SubResource.fromMap((map['gatewayLoadBalancer'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      loadBalancerBackendAddressPools: map['loadBalancerBackendAddressPools'] == null ? null : (pulumi.Input.decodeList<BackendAddressPool>(map['loadBalancerBackendAddressPools'], (value) => BackendAddressPool.fromMap((value as Map).cast<String, dynamic>()))).input(),
      loadBalancerInboundNatRules: map['loadBalancerInboundNatRules'] == null ? null : (pulumi.Input.decodeList<InboundNatRule>(map['loadBalancerInboundNatRules'], (value) => InboundNatRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      primary: map['primary'] == null ? null : (map['primary'] as bool).input(),
      privateIPAddress: map['privateIPAddress'] == null ? null : (map['privateIPAddress'] as String).input(),
      privateIPAddressPrefixLength: map['privateIPAddressPrefixLength'] == null ? null : (map['privateIPAddressPrefixLength'] as int).input(),
      privateIPAddressVersion: map['privateIPAddressVersion'] == null ? null : (map['privateIPAddressVersion'] as String).input(),
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : (map['privateIPAllocationMethod'] as String).input(),
      publicIPAddress: map['publicIPAddress'] == null ? null : (PublicIPAddress.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>())).input(),
      subnet: map['subnet'] == null ? null : (Subnet.fromMap((map['subnet'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      virtualNetworkTaps: map['virtualNetworkTaps'] == null ? null : (pulumi.Input.decodeList<VirtualNetworkTap>(map['virtualNetworkTaps'], (value) => VirtualNetworkTap.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

