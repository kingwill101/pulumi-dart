// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// IP configuration for virtual network gateway.
class VirtualNetworkGatewayIPConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Private IP Address for this gateway.
  final pulumi.Input<String> privateIPAddress;
  /// The private IP address allocation method.
  final pulumi.Input<String>? privateIPAllocationMethod;
  /// The provisioning state of the virtual network gateway IP configuration resource.
  final pulumi.Input<String> provisioningState;
  /// The reference to the public IP resource.
  final pulumi.Input<SubResourceResponse>? publicIPAddress;
  /// The reference to the subnet resource.
  final pulumi.Input<SubResourceResponse>? subnet;

  /// Creates a new [VirtualNetworkGatewayIPConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateIPAddress] Private IP Address for this gateway.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [provisioningState] The provisioning state of the virtual network gateway IP configuration resource.
  /// [publicIPAddress] The reference to the public IP resource.
  /// [subnet] The reference to the subnet resource.
  VirtualNetworkGatewayIPConfigurationResponse({
    required this.etag,
    this.id,
    this.name,
    required this.privateIPAddress,
    this.privateIPAllocationMethod,
    required this.provisioningState,
    this.publicIPAddress,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'privateIPAddress': privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'provisioningState': provisioningState,
      'publicIPAddress': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory VirtualNetworkGatewayIPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkGatewayIPConfigurationResponse(
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      privateIPAddress: (map['privateIPAddress'] as String).input(),
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : (map['privateIPAllocationMethod']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publicIPAddress: map['publicIPAddress'] == null ? null : (SubResourceResponse.fromMap((map['publicIPAddress']! as Map).cast<String, dynamic>())).input(),
      subnet: map['subnet'] == null ? null : (SubResourceResponse.fromMap((map['subnet']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

