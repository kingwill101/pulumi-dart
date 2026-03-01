// ignore_for_file: unused_element, unnecessary_cast

import 'public_ipaddress_response.dart';
import 'subnet_response.dart';

/// Result data returned by getVirtualHubIpConfiguration.
class GetVirtualHubIpConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Name of the Ip Configuration.
  final String? name;
  /// The private IP address of the IP configuration.
  final String? privateIPAddress;
  /// The private IP address allocation method.
  final String? privateIPAllocationMethod;
  /// The provisioning state of the IP configuration resource.
  final String provisioningState;
  /// The reference to the public IP resource.
  final PublicIPAddressResponse? publicIPAddress;
  /// The reference to the subnet resource.
  final SubnetResponse? subnet;
  /// Ipconfiguration type.
  final String type;

  /// Creates a new [GetVirtualHubIpConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the Ip Configuration.
  /// [privateIPAddress] The private IP address of the IP configuration.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [provisioningState] The provisioning state of the IP configuration resource.
  /// [publicIPAddress] The reference to the public IP resource.
  /// [subnet] The reference to the subnet resource.
  /// [type] Ipconfiguration type.
  GetVirtualHubIpConfigurationResult({
    required this.azureApiVersion,
    required this.etag,
    this.id,
    this.name,
    this.privateIPAddress,
    this.privateIPAllocationMethod,
    required this.provisioningState,
    this.publicIPAddress,
    this.subnet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'provisioningState': provisioningState,
      'publicIPAddress': ?publicIPAddress == null ? null : publicIPAddress!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'type': type,
    };
  }

  factory GetVirtualHubIpConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualHubIpConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      provisioningState: map['provisioningState'] as String,
      publicIPAddress: map['publicIPAddress'] == null ? null : PublicIPAddressResponse.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : SubnetResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

