// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_load_balancer_tunnel_interface_response.dart';
import 'load_balancer_backend_address_response.dart';
import 'network_interface_ipconfiguration_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getLoadBalancerBackendAddressPool.
class GetLoadBalancerBackendAddressPoolResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// An array of references to IP addresses defined in network interfaces.
  final List<NetworkInterfaceIPConfigurationResponse>? backendIPConfigurations;
  /// Amount of seconds Load Balancer waits for before sending RESET to client and backend address.
  final int? drainPeriodInSeconds;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// An array of references to inbound NAT rules that use this backend address pool.
  final List<SubResourceResponse>? inboundNatRules;
  /// An array of backend addresses.
  final List<LoadBalancerBackendAddressResponse>? loadBalancerBackendAddresses;
  /// An array of references to load balancing rules that use this backend address pool.
  final List<SubResourceResponse>? loadBalancingRules;
  /// The location of the backend address pool.
  final String? location;
  /// The name of the resource that is unique within the set of backend address pools used by the load balancer. This name can be used to access the resource.
  final String? name;
  /// A reference to an outbound rule that uses this backend address pool.
  final SubResourceResponse? outboundRule;
  /// An array of references to outbound rules that use this backend address pool.
  final List<SubResourceResponse>? outboundRules;
  /// The provisioning state of the backend address pool resource.
  final String? provisioningState;
  /// Backend address synchronous mode for the backend pool
  final String? syncMode;
  /// An array of gateway load balancer tunnel interfaces.
  final List<GatewayLoadBalancerTunnelInterfaceResponse>? tunnelInterfaces;
  /// Type of the resource.
  final String? type;
  /// A reference to a virtual network.
  final SubResourceResponse? virtualNetwork;

  /// Creates a new [GetLoadBalancerBackendAddressPoolResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backendIPConfigurations] An array of references to IP addresses defined in network interfaces.
  /// [drainPeriodInSeconds] Amount of seconds Load Balancer waits for before sending RESET to client and backend address.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [inboundNatRules] An array of references to inbound NAT rules that use this backend address pool.
  /// [loadBalancerBackendAddresses] An array of backend addresses.
  /// [loadBalancingRules] An array of references to load balancing rules that use this backend address pool.
  /// [location] The location of the backend address pool.
  /// [name] The name of the resource that is unique within the set of backend address pools used by the load balancer. This name can be used to access the resource.
  /// [outboundRule] A reference to an outbound rule that uses this backend address pool.
  /// [outboundRules] An array of references to outbound rules that use this backend address pool.
  /// [provisioningState] The provisioning state of the backend address pool resource.
  /// [syncMode] Backend address synchronous mode for the backend pool
  /// [tunnelInterfaces] An array of gateway load balancer tunnel interfaces.
  /// [type] Type of the resource.
  /// [virtualNetwork] A reference to a virtual network.
  const GetLoadBalancerBackendAddressPoolResult({
    this.azureApiVersion,
    this.backendIPConfigurations,
    this.drainPeriodInSeconds,
    this.etag,
    this.id,
    this.inboundNatRules,
    this.loadBalancerBackendAddresses,
    this.loadBalancingRules,
    this.location,
    this.name,
    this.outboundRule,
    this.outboundRules,
    this.provisioningState,
    this.syncMode,
    this.tunnelInterfaces,
    this.type,
    this.virtualNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'backendIPConfigurations': ?(() { final guardedValue = backendIPConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<NetworkInterfaceIPConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'drainPeriodInSeconds': ?drainPeriodInSeconds,
      'etag': ?etag,
      'id': ?id,
      'inboundNatRules': ?(() { final guardedValue = inboundNatRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'loadBalancerBackendAddresses': ?(() { final guardedValue = loadBalancerBackendAddresses; if (guardedValue == null) return null; return pulumi.Input.encodeList<LoadBalancerBackendAddressResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'loadBalancingRules': ?(() { final guardedValue = loadBalancingRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'outboundRule': ?outboundRule?.toMap(),
      'outboundRules': ?(() { final guardedValue = outboundRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'syncMode': ?syncMode,
      'tunnelInterfaces': ?(() { final guardedValue = tunnelInterfaces; if (guardedValue == null) return null; return pulumi.Input.encodeList<GatewayLoadBalancerTunnelInterfaceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': ?type,
      'virtualNetwork': ?virtualNetwork?.toMap(),
    };
  }

  factory GetLoadBalancerBackendAddressPoolResult.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerBackendAddressPoolResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backendIPConfigurations: (() { final guardedValue = map['backendIPConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NetworkInterfaceIPConfigurationResponse>(guardedValue, (value) => NetworkInterfaceIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      drainPeriodInSeconds: (() { final guardedValue = map['drainPeriodInSeconds']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inboundNatRules: (() { final guardedValue = map['inboundNatRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      loadBalancerBackendAddresses: (() { final guardedValue = map['loadBalancerBackendAddresses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancerBackendAddressResponse>(guardedValue, (value) => LoadBalancerBackendAddressResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      loadBalancingRules: (() { final guardedValue = map['loadBalancingRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outboundRule: (() { final guardedValue = map['outboundRule']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      outboundRules: (() { final guardedValue = map['outboundRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      syncMode: (() { final guardedValue = map['syncMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tunnelInterfaces: (() { final guardedValue = map['tunnelInterfaces']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GatewayLoadBalancerTunnelInterfaceResponse>(guardedValue, (value) => GatewayLoadBalancerTunnelInterfaceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      virtualNetwork: (() { final guardedValue = map['virtualNetwork']; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
