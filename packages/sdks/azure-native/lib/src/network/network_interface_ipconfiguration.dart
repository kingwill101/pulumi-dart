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
  final pulumi.Input<List<ApplicationGatewayBackendAddressPool>>?
  applicationGatewayBackendAddressPools;

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

  /// Private IP address of the IP configuration. It can be a single IP address or a CIDR block in the format &lt;address&gt;/&lt;prefix-length&gt;.
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
  /// [privateIPAddress] Private IP address of the IP configuration. It can be a single IP address or a CIDR block in the format &lt;address&gt;/&lt;prefix-length&gt;.
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
      'applicationGatewayBackendAddressPools':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationGatewayBackendAddressPool>,
            List<Map<String, dynamic>>
          >(
            applicationGatewayBackendAddressPools,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationGatewayBackendAddressPool,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'applicationSecurityGroups':
          ?pulumi.Input.mapOptionalInputValue<
            List<ApplicationSecurityGroup>,
            List<Map<String, dynamic>>
          >(
            applicationSecurityGroups,
            (value) =>
                pulumi.Input.encodeList<
                  ApplicationSecurityGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'gatewayLoadBalancer':
          ?pulumi.Input.mapOptionalInputValue<
            SubResource,
            Map<String, dynamic>
          >(gatewayLoadBalancer, (value) => value.toMap()),
      'id': ?id,
      'loadBalancerBackendAddressPools':
          ?pulumi.Input.mapOptionalInputValue<
            List<BackendAddressPool>,
            List<Map<String, dynamic>>
          >(
            loadBalancerBackendAddressPools,
            (value) =>
                pulumi.Input.encodeList<
                  BackendAddressPool,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'loadBalancerInboundNatRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<InboundNatRule>,
            List<Map<String, dynamic>>
          >(
            loadBalancerInboundNatRules,
            (value) =>
                pulumi.Input.encodeList<InboundNatRule, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'name': ?name,
      'primary': ?primary,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAddressPrefixLength': ?privateIPAddressPrefixLength,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'publicIPAddress':
          ?pulumi.Input.mapOptionalInputValue<
            PublicIPAddress,
            Map<String, dynamic>
          >(publicIPAddress, (value) => value.toMap()),
      'subnet':
          ?pulumi.Input.mapOptionalInputValue<Subnet, Map<String, dynamic>>(
            subnet,
            (value) => value.toMap(),
          ),
      'type': ?type,
      'virtualNetworkTaps':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualNetworkTap>,
            List<Map<String, dynamic>>
          >(
            virtualNetworkTaps,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualNetworkTap,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory NetworkInterfaceIPConfiguration.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceIPConfiguration(
      applicationGatewayBackendAddressPools: (() {
        final guardedValue = map['applicationGatewayBackendAddressPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationGatewayBackendAddressPool>(
            guardedValue,
            (value) => ApplicationGatewayBackendAddressPool.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      applicationSecurityGroups: (() {
        final guardedValue = map['applicationSecurityGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ApplicationSecurityGroup>(
            guardedValue,
            (value) => ApplicationSecurityGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      gatewayLoadBalancer: (() {
        final guardedValue = map['gatewayLoadBalancer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResource.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancerBackendAddressPools: (() {
        final guardedValue = map['loadBalancerBackendAddressPools'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<BackendAddressPool>(
            guardedValue,
            (value) => BackendAddressPool.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      loadBalancerInboundNatRules: (() {
        final guardedValue = map['loadBalancerInboundNatRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InboundNatRule>(
            guardedValue,
            (value) =>
                InboundNatRule.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      primary: (() {
        final guardedValue = map['primary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      privateIPAddress: (() {
        final guardedValue = map['privateIPAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIPAddressPrefixLength: (() {
        final guardedValue = map['privateIPAddressPrefixLength'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      privateIPAddressVersion: (() {
        final guardedValue = map['privateIPAddressVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIPAllocationMethod: (() {
        final guardedValue = map['privateIPAllocationMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicIPAddress: (() {
        final guardedValue = map['publicIPAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PublicIPAddress.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subnet: (() {
        final guardedValue = map['subnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Subnet.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      virtualNetworkTaps: (() {
        final guardedValue = map['virtualNetworkTaps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualNetworkTap>(
            guardedValue,
            (value) => VirtualNetworkTap.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
