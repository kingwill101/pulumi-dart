// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_backend_address_pool_response.dart';
import 'application_security_group_response.dart';
import 'backend_address_pool_interface_endpoint_response.dart';
import 'inbound_nat_rule_interface_endpoint_response.dart';
import 'public_ipaddress_interface_endpoint_response.dart';
import 'subnet_interface_endpoint_response.dart';
import 'virtual_network_tap_interface_endpoint_response.dart';

/// IPConfiguration in a network interface.
class NetworkInterfaceIPConfigurationInterfaceEndpointResponse {
  /// The reference of ApplicationGatewayBackendAddressPool resource.
  final pulumi.Input<List<ApplicationGatewayBackendAddressPoolResponse>?>? applicationGatewayBackendAddressPools;
  /// Application security groups in which the IP configuration is included.
  final pulumi.Input<List<ApplicationSecurityGroupResponse>?>? applicationSecurityGroups;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String?>? etag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The reference of LoadBalancerBackendAddressPool resource.
  final pulumi.Input<List<BackendAddressPoolInterfaceEndpointResponse>?>? loadBalancerBackendAddressPools;
  /// A list of references of LoadBalancerInboundNatRules.
  final pulumi.Input<List<InboundNatRuleInterfaceEndpointResponse>?>? loadBalancerInboundNatRules;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// Gets whether this is a primary customer address on the network interface.
  final pulumi.Input<bool?>? primary;
  /// Private IP address of the IP configuration.
  final pulumi.Input<String?>? privateIPAddress;
  /// Available from Api-Version 2016-03-30 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.
  final pulumi.Input<String?>? privateIPAddressVersion;
  /// The private IP address allocation method.
  final pulumi.Input<String?>? privateIPAllocationMethod;
  /// The provisioning state of the network interface IP configuration. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String?>? provisioningState;
  /// Public IP address bound to the IP configuration.
  final pulumi.Input<PublicIPAddressInterfaceEndpointResponse?>? publicIPAddress;
  /// Subnet bound to the IP configuration.
  final pulumi.Input<SubnetInterfaceEndpointResponse?>? subnet;
  /// The reference to Virtual Network Taps.
  final pulumi.Input<List<VirtualNetworkTapInterfaceEndpointResponse>?>? virtualNetworkTaps;

  /// Creates a new [NetworkInterfaceIPConfigurationInterfaceEndpointResponse].
  /// [applicationGatewayBackendAddressPools] The reference of ApplicationGatewayBackendAddressPool resource.
  /// [applicationSecurityGroups] Application security groups in which the IP configuration is included.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [loadBalancerBackendAddressPools] The reference of LoadBalancerBackendAddressPool resource.
  /// [loadBalancerInboundNatRules] A list of references of LoadBalancerInboundNatRules.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [primary] Gets whether this is a primary customer address on the network interface.
  /// [privateIPAddress] Private IP address of the IP configuration.
  /// [privateIPAddressVersion] Available from Api-Version 2016-03-30 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [provisioningState] The provisioning state of the network interface IP configuration. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [publicIPAddress] Public IP address bound to the IP configuration.
  /// [subnet] Subnet bound to the IP configuration.
  /// [virtualNetworkTaps] The reference to Virtual Network Taps.
  const NetworkInterfaceIPConfigurationInterfaceEndpointResponse({
    this.applicationGatewayBackendAddressPools,
    this.applicationSecurityGroups,
    this.etag,
    this.id,
    this.loadBalancerBackendAddressPools,
    this.loadBalancerInboundNatRules,
    this.name,
    this.primary,
    this.privateIPAddress,
    this.privateIPAddressVersion,
    this.privateIPAllocationMethod,
    this.provisioningState,
    this.publicIPAddress,
    this.subnet,
    this.virtualNetworkTaps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayBackendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayBackendAddressPoolResponse>, List<Map<String, dynamic>>>(applicationGatewayBackendAddressPools, (value) => pulumi.Input.encodeList<ApplicationGatewayBackendAddressPoolResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationSecurityGroups': ?pulumi.Input.mapOptionalInputValue<List<ApplicationSecurityGroupResponse>, List<Map<String, dynamic>>>(applicationSecurityGroups, (value) => pulumi.Input.encodeList<ApplicationSecurityGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'id': ?id,
      'loadBalancerBackendAddressPools': ?pulumi.Input.mapOptionalInputValue<List<BackendAddressPoolInterfaceEndpointResponse>, List<Map<String, dynamic>>>(loadBalancerBackendAddressPools, (value) => pulumi.Input.encodeList<BackendAddressPoolInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancerInboundNatRules': ?pulumi.Input.mapOptionalInputValue<List<InboundNatRuleInterfaceEndpointResponse>, List<Map<String, dynamic>>>(loadBalancerInboundNatRules, (value) => pulumi.Input.encodeList<InboundNatRuleInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'primary': ?primary,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'provisioningState': ?provisioningState,
      'publicIPAddress': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressInterfaceEndpointResponse, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetInterfaceEndpointResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'virtualNetworkTaps': ?pulumi.Input.mapOptionalInputValue<List<VirtualNetworkTapInterfaceEndpointResponse>, List<Map<String, dynamic>>>(virtualNetworkTaps, (value) => pulumi.Input.encodeList<VirtualNetworkTapInterfaceEndpointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkInterfaceIPConfigurationInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceIPConfigurationInterfaceEndpointResponse(
      applicationGatewayBackendAddressPools: (() { final guardedValue = map['applicationGatewayBackendAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationGatewayBackendAddressPoolResponse>(guardedValue, (value) => ApplicationGatewayBackendAddressPoolResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      applicationSecurityGroups: (() { final guardedValue = map['applicationSecurityGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationSecurityGroupResponse>(guardedValue, (value) => ApplicationSecurityGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerBackendAddressPools: (() { final guardedValue = map['loadBalancerBackendAddressPools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BackendAddressPoolInterfaceEndpointResponse>(guardedValue, (value) => BackendAddressPoolInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      loadBalancerInboundNatRules: (() { final guardedValue = map['loadBalancerInboundNatRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InboundNatRuleInterfaceEndpointResponse>(guardedValue, (value) => InboundNatRuleInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAddressVersion: (() { final guardedValue = map['privateIPAddressVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAllocationMethod: (() { final guardedValue = map['privateIPAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIPAddress: (() { final guardedValue = map['publicIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicIPAddressInterfaceEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetInterfaceEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      virtualNetworkTaps: (() { final guardedValue = map['virtualNetworkTaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNetworkTapInterfaceEndpointResponse>(guardedValue, (value) => VirtualNetworkTapInterfaceEndpointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
