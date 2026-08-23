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
  const VirtualNetworkGatewayIPConfigurationResponse({
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
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAddress: pulumi.Input.fromValue(map['privateIPAddress'] as String),
      privateIPAllocationMethod: (() { final guardedValue = map['privateIPAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicIPAddress: (() { final guardedValue = map['publicIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
