// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress_response.dart';
import 'subnet_response.dart';

/// IP configuration.
class IPConfigurationResponse {
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// The private IP address of the IP configuration.
  final pulumi.Input<String>? privateIPAddress;
  /// The private IP address allocation method.
  final pulumi.Input<String>? privateIPAllocationMethod;
  /// The provisioning state of the IP configuration resource.
  final pulumi.Input<String> provisioningState;
  /// The reference to the public IP resource.
  final pulumi.Input<PublicIPAddressResponse>? publicIPAddress;
  /// The reference to the subnet resource.
  final pulumi.Input<SubnetResponse>? subnet;

  /// Creates a new [IPConfigurationResponse].
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [privateIPAddress] The private IP address of the IP configuration.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [provisioningState] The provisioning state of the IP configuration resource.
  /// [publicIPAddress] The reference to the public IP resource.
  /// [subnet] The reference to the subnet resource.
  IPConfigurationResponse({
    required this.etag,
    this.id,
    this.name,
    this.privateIPAddress,
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
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'provisioningState': provisioningState,
      'publicIPAddress': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressResponse, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory IPConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return IPConfigurationResponse(
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      privateIPAddress: map['privateIPAddress'] == null ? null : (map['privateIPAddress'] as String).input(),
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : (map['privateIPAllocationMethod'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publicIPAddress: map['publicIPAddress'] == null ? null : (PublicIPAddressResponse.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>())).input(),
      subnet: map['subnet'] == null ? null : (SubnetResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

