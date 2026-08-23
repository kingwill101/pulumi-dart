// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_backend_address_pool_response.dart';
import 'application_security_group_response.dart';
import 'backend_address_pool_response.dart';
import 'inbound_nat_rule_response.dart';
import 'network_interface_ipconfiguration_private_link_connection_properties_response.dart';
import 'public_ipaddress_virtual_network_appliance_response.dart';
import 'sub_resource_response.dart';
import 'subnet_response.dart';
import 'virtual_network_tap_virtual_network_appliance_response.dart';

/// IPConfiguration in a network interface.
class NetworkInterfaceIPConfigurationVirtualNetworkApplianceResponse {
  /// The reference to ApplicationGatewayBackendAddressPool resource.
  final pulumi.Input<List<ApplicationGatewayBackendAddressPoolResponse>>? applicationGatewayBackendAddressPools;
  /// Application security groups in which the IP configuration is included.
  final pulumi.Input<List<ApplicationSecurityGroupResponse>>? applicationSecurityGroups;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// The reference to gateway load balancer frontend IP.
  final pulumi.Input<SubResourceResponse>? gatewayLoadBalancer;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The reference to LoadBalancerBackendAddressPool resource.
  final pulumi.Input<List<BackendAddressPoolResponse>>? loadBalancerBackendAddressPools;
  /// A list of references of LoadBalancerInboundNatRules.
  final pulumi.Input<List<InboundNatRuleResponse>>? loadBalancerInboundNatRules;
  /// Name of the resource.
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
  /// PrivateLinkConnection properties for the network interface.
  final pulumi.Input<NetworkInterfaceIPConfigurationPrivateLinkConnectionPropertiesResponse> privateLinkConnectionProperties;
  /// The provisioning state of the network interface IP configuration.
  final pulumi.Input<String> provisioningState;
  /// Public IP address bound to the IP configuration.
  final pulumi.Input<PublicIPAddressVirtualNetworkApplianceResponse>? publicIPAddress;
  /// Subnet bound to the IP configuration.
  final pulumi.Input<SubnetResponse>? subnet;
  /// Resource type.
  final pulumi.Input<String> type;
  /// The reference to Virtual Network Taps.
  final pulumi.Input<List<VirtualNetworkTapVirtualNetworkApplianceResponse>>? virtualNetworkTaps;

  /// Creates a new [NetworkInterfaceIPConfigurationVirtualNetworkApplianceResponse].
  /// [applicationGatewayBackendAddressPools] The reference to ApplicationGatewayBackendAddressPool resource.
  /// [applicationSecurityGroups] Application security groups in which the IP configuration is included.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [gatewayLoadBalancer] The reference to gateway load balancer frontend IP.
  /// [id] Resource ID.
  /// [loadBalancerBackendAddressPools] The reference to LoadBalancerBackendAddressPool resource.
  /// [loadBalancerInboundNatRules] A list of references of LoadBalancerInboundNatRules.
  /// [name] Name of the resource.
  /// [primary] Whether this is a primary customer address on the network interface.
  /// [privateIPAddress] Private IP address of the IP configuration. It can be a single IP address or a CIDR block in the format &lt;address&gt;/&lt;prefix-length&gt;.
  /// [privateIPAddressPrefixLength] The private IP address prefix length. If specified and the allocation method is dynamic, the service will allocate a CIDR block instead of a single IP address.
  /// [privateIPAddressVersion] Whether the specific IP configuration is IPv4 or IPv6. Default is IPv4.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [privateLinkConnectionProperties] PrivateLinkConnection properties for the network interface.
  /// [provisioningState] The provisioning state of the network interface IP configuration.
  /// [publicIPAddress] Public IP address bound to the IP configuration.
  /// [subnet] Subnet bound to the IP configuration.
  /// [type] Resource type.
  /// [virtualNetworkTaps] The reference to Virtual Network Taps.
  const NetworkInterfaceIPConfigurationVirtualNetworkApplianceResponse({
    this.applicationGatewayBackendAddressPools,
    this.applicationSecurityGroups,
    required this.etag,
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
    required this.privateLinkConnectionProperties,
    required this.provisioningState,
    this.publicIPAddress,
    this.subnet,
    required this.type,
    this.virtualNetworkTaps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayBackendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayBackendAddressPoolResponse>, List<Map<String, dynamic>>>(applicationGatewayBackendAddressPools, (value) => pulumi.Input.encodeList<ApplicationGatewayBackendAddressPoolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationSecurityGroups': ?pulumi.Input.mapOptionalInputValue<List<ApplicationSecurityGroupResponse>, List<Map<String, dynamic>>>(applicationSecurityGroups, (value) => pulumi.Input.encodeList<ApplicationSecurityGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': etag,
      'gatewayLoadBalancer': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(gatewayLoadBalancer, (value) => value.toMap()),
      'id': ?id,
      'loadBalancerBackendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<BackendAddressPoolResponse>, List<Map<String, dynamic>>>(loadBalancerBackendAddressPools, (value) => pulumi.Input.encodeList<BackendAddressPoolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerInboundNatRules': ?pulumi.Input.mapOptionalInputValue<List<InboundNatRuleResponse>, List<Map<String, dynamic>>>(loadBalancerInboundNatRules, (value) => pulumi.Input.encodeList<InboundNatRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'primary': ?primary,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAddressPrefixLength': ?privateIPAddressPrefixLength,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'privateLinkConnectionProperties': pulumi.Input.mapInputValue<NetworkInterfaceIPConfigurationPrivateLinkConnectionPropertiesResponse, Map<String, dynamic>>(privateLinkConnectionProperties, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicIPAddress': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressVirtualNetworkApplianceResponse, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'type': type,
      'virtualNetworkTaps': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkTapVirtualNetworkApplianceResponse>, List<Map<String, dynamic>>>(virtualNetworkTaps, (value) => pulumi.Input.encodeList<VirtualNetworkTapVirtualNetworkApplianceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkInterfaceIPConfigurationVirtualNetworkApplianceResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceIPConfigurationVirtualNetworkApplianceResponse(
      applicationGatewayBackendAddressPools: (() { final guardedValue = map['applicationGatewayBackendAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayBackendAddressPoolResponse>(guardedValue, (value) => ApplicationGatewayBackendAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      applicationSecurityGroups: (() { final guardedValue = map['applicationSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationSecurityGroupResponse>(guardedValue, (value) => ApplicationSecurityGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      gatewayLoadBalancer: (() { final guardedValue = map['gatewayLoadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerBackendAddressPools: (() { final guardedValue = map['loadBalancerBackendAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendAddressPoolResponse>(guardedValue, (value) => BackendAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loadBalancerInboundNatRules: (() { final guardedValue = map['loadBalancerInboundNatRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InboundNatRuleResponse>(guardedValue, (value) => InboundNatRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAddressPrefixLength: (() { final guardedValue = map['privateIPAddressPrefixLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      privateIPAddressVersion: (() { final guardedValue = map['privateIPAddressVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAllocationMethod: (() { final guardedValue = map['privateIPAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkConnectionProperties: pulumi.Input.fromValue(NetworkInterfaceIPConfigurationPrivateLinkConnectionPropertiesResponse.fromMap((map['privateLinkConnectionProperties']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicIPAddress: (() { final guardedValue = map['publicIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicIPAddressVirtualNetworkApplianceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      virtualNetworkTaps: (() { final guardedValue = map['virtualNetworkTaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkTapVirtualNetworkApplianceResponse>(guardedValue, (value) => VirtualNetworkTapVirtualNetworkApplianceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
