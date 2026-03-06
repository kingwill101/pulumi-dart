// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_response.dart';
import 'sub_resource_response.dart';
import 'subnet_response.dart';

/// Frontend IP address of the load balancer.
class FrontendIPConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// The reference to gateway load balancer frontend IP.
  final pulumi.Input<SubResourceResponse>? gatewayLoadBalancer;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// An array of references to inbound pools that use this frontend IP.
  final pulumi.Input<List<SubResourceResponse>> inboundNatPools;
  /// An array of references to inbound rules that use this frontend IP.
  final pulumi.Input<List<SubResourceResponse>> inboundNatRules;
  /// An array of references to load balancing rules that use this frontend IP.
  final pulumi.Input<List<SubResourceResponse>> loadBalancingRules;
  /// The name of the resource that is unique within the set of frontend IP configurations used by the load balancer. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// An array of references to outbound rules that use this frontend IP.
  final pulumi.Input<List<SubResourceResponse>> outboundRules;
  /// The private IP address of the IP configuration.
  final pulumi.Input<String>? privateIPAddress;
  /// Whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.
  final pulumi.Input<String>? privateIPAddressVersion;
  /// The Private IP allocation method.
  final pulumi.Input<String>? privateIPAllocationMethod;
  /// The provisioning state of the frontend IP configuration resource.
  final pulumi.Input<String> provisioningState;
  /// The reference to the Public IP resource.
  final pulumi.Input<PublicIPAddressResponse>? publicIPAddress;
  /// The reference to the Public IP Prefix resource.
  final pulumi.Input<SubResourceResponse>? publicIPPrefix;
  /// The reference to the subnet resource.
  final pulumi.Input<SubnetResponse>? subnet;
  /// Type of the resource.
  final pulumi.Input<String> type;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [FrontendIPConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [gatewayLoadBalancer] The reference to gateway load balancer frontend IP.
  /// [id] Resource ID.
  /// [inboundNatPools] An array of references to inbound pools that use this frontend IP.
  /// [inboundNatRules] An array of references to inbound rules that use this frontend IP.
  /// [loadBalancingRules] An array of references to load balancing rules that use this frontend IP.
  /// [name] The name of the resource that is unique within the set of frontend IP configurations used by the load balancer. This name can be used to access the resource.
  /// [outboundRules] An array of references to outbound rules that use this frontend IP.
  /// [privateIPAddress] The private IP address of the IP configuration.
  /// [privateIPAddressVersion] Whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.
  /// [privateIPAllocationMethod] The Private IP allocation method.
  /// [provisioningState] The provisioning state of the frontend IP configuration resource.
  /// [publicIPAddress] The reference to the Public IP resource.
  /// [publicIPPrefix] The reference to the Public IP Prefix resource.
  /// [subnet] The reference to the subnet resource.
  /// [type] Type of the resource.
  /// [zones] A list of availability zones denoting the IP allocated for the resource needs to come from.
  const FrontendIPConfigurationResponse({
    required this.etag,
    this.gatewayLoadBalancer,
    this.id,
    required this.inboundNatPools,
    required this.inboundNatRules,
    required this.loadBalancingRules,
    this.name,
    required this.outboundRules,
    this.privateIPAddress,
    this.privateIPAddressVersion,
    this.privateIPAllocationMethod,
    required this.provisioningState,
    this.publicIPAddress,
    this.publicIPPrefix,
    this.subnet,
    required this.type,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'gatewayLoadBalancer': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(gatewayLoadBalancer, (value) => value.toMap()),
      'id': ?id,
      'inboundNatPools': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(inboundNatPools, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inboundNatRules': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(inboundNatRules, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancingRules': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(loadBalancingRules, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'outboundRules': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(outboundRules, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateIPAddress': ?privateIPAddress,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'provisioningState': provisioningState,
      'publicIPAddress': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressResponse, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'publicIPPrefix': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(publicIPPrefix, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'type': type,
      'zones': ?zones,
    };
  }

  factory FrontendIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FrontendIPConfigurationResponse(
      etag: pulumi.Input.fromValue(map['etag'] as String),
      gatewayLoadBalancer: (() { final guardedValue = map['gatewayLoadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inboundNatPools: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['inboundNatPools']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      inboundNatRules: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['inboundNatRules']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      loadBalancingRules: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['loadBalancingRules']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundRules: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['outboundRules']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAddressVersion: (() { final guardedValue = map['privateIPAddressVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAllocationMethod: (() { final guardedValue = map['privateIPAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicIPAddress: (() { final guardedValue = map['publicIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicIPAddressResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicIPPrefix: (() { final guardedValue = map['publicIPPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

