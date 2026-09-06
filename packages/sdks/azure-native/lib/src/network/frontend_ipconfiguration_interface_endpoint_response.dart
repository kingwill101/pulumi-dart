// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_interface_endpoint_response.dart';
import 'sub_resource_response.dart';
import 'subnet_interface_endpoint_response.dart';

/// Frontend IP address of the load balancer.
class FrontendIPConfigurationInterfaceEndpointResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String?>? etag;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Read only. Inbound pools URIs that use this frontend IP.
  final pulumi.Input<List<SubResourceResponse>> inboundNatPools;
  /// Read only. Inbound rules URIs that use this frontend IP.
  final pulumi.Input<List<SubResourceResponse>> inboundNatRules;
  /// Gets load balancing rules URIs that use this frontend IP.
  final pulumi.Input<List<SubResourceResponse>> loadBalancingRules;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// Read only. Outbound rules URIs that use this frontend IP.
  final pulumi.Input<List<SubResourceResponse>> outboundRules;
  /// The private IP address of the IP configuration.
  final pulumi.Input<String?>? privateIPAddress;
  /// The Private IP allocation method.
  final pulumi.Input<String?>? privateIPAllocationMethod;
  /// Gets the provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  final pulumi.Input<String?>? provisioningState;
  /// The reference of the Public IP resource.
  final pulumi.Input<PublicIPAddressInterfaceEndpointResponse?>? publicIPAddress;
  /// The reference of the Public IP Prefix resource.
  final pulumi.Input<SubResourceResponse?>? publicIPPrefix;
  /// The reference of the subnet resource.
  final pulumi.Input<SubnetInterfaceEndpointResponse?>? subnet;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final pulumi.Input<List<String>?>? zones;

  /// Creates a new [FrontendIPConfigurationInterfaceEndpointResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [inboundNatPools] Read only. Inbound pools URIs that use this frontend IP.
  /// [inboundNatRules] Read only. Inbound rules URIs that use this frontend IP.
  /// [loadBalancingRules] Gets load balancing rules URIs that use this frontend IP.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [outboundRules] Read only. Outbound rules URIs that use this frontend IP.
  /// [privateIPAddress] The private IP address of the IP configuration.
  /// [privateIPAllocationMethod] The Private IP allocation method.
  /// [provisioningState] Gets the provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'.
  /// [publicIPAddress] The reference of the Public IP resource.
  /// [publicIPPrefix] The reference of the Public IP Prefix resource.
  /// [subnet] The reference of the subnet resource.
  /// [zones] A list of availability zones denoting the IP allocated for the resource needs to come from.
  const FrontendIPConfigurationInterfaceEndpointResponse({
    this.etag,
    this.id,
    required this.inboundNatPools,
    required this.inboundNatRules,
    required this.loadBalancingRules,
    this.name,
    required this.outboundRules,
    this.privateIPAddress,
    this.privateIPAllocationMethod,
    this.provisioningState,
    this.publicIPAddress,
    this.publicIPPrefix,
    this.subnet,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'id': ?id,
      'inboundNatPools': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(inboundNatPools, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inboundNatRules': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(inboundNatRules, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancingRules': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(loadBalancingRules, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'outboundRules': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(outboundRules, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'provisioningState': ?provisioningState,
      'publicIPAddress': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressInterfaceEndpointResponse, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'publicIPPrefix': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(publicIPPrefix, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetInterfaceEndpointResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory FrontendIPConfigurationInterfaceEndpointResponse.fromMap(Map<String, dynamic> map) {
    return FrontendIPConfigurationInterfaceEndpointResponse(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inboundNatPools: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['inboundNatPools']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      inboundNatRules: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['inboundNatRules']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      loadBalancingRules: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['loadBalancingRules']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outboundRules: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['outboundRules']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAllocationMethod: (() { final guardedValue = map['privateIPAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIPAddress: (() { final guardedValue = map['publicIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicIPAddressInterfaceEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicIPPrefix: (() { final guardedValue = map['publicIPPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubnetInterfaceEndpointResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
