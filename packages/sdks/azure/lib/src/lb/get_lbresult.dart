// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lbfrontend_ip_configuration.dart';

/// Result data returned by getLB.
class GetLBResult {
  /// A `frontendIpConfiguration` block as documented below.
  final List<GetLBFrontendIpConfiguration> frontendIpConfigurations;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure location where the Load Balancer exists.
  final String location;
  /// The name of the Frontend IP Configuration.
  final String name;
  /// Private IP Address to assign to the Load Balancer.
  final String privateIpAddress;
  /// The list of private IP address assigned to the load balancer in `frontendIpConfiguration` blocks, if any.
  final List<String> privateIpAddresses;
  final String resourceGroupName;
  /// The SKU of the Load Balancer.
  final String sku;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetLBResult].
  /// [frontendIpConfigurations] A `frontendIpConfiguration` block as documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location where the Load Balancer exists.
  /// [name] The name of the Frontend IP Configuration.
  /// [privateIpAddress] Private IP Address to assign to the Load Balancer.
  /// [privateIpAddresses] The list of private IP address assigned to the load balancer in `frontendIpConfiguration` blocks, if any.
  /// [resourceGroupName] Required.
  /// [sku] The SKU of the Load Balancer.
  /// [tags] A mapping of tags assigned to the resource.
  const GetLBResult({
    required this.frontendIpConfigurations,
    required this.id,
    required this.location,
    required this.name,
    required this.privateIpAddress,
    required this.privateIpAddresses,
    required this.resourceGroupName,
    required this.sku,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontendIpConfigurations': pulumi.Input.encodeList<GetLBFrontendIpConfiguration, Map<String, dynamic>>(frontendIpConfigurations, (value) => value.toMap()),
      'id': id,
      'location': location,
      'name': name,
      'privateIpAddress': privateIpAddress,
      'privateIpAddresses': privateIpAddresses,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': tags,
    };
  }

  factory GetLBResult.fromMap(Map<String, dynamic> map) {
    return GetLBResult(
      frontendIpConfigurations: pulumi.Input.decodeList<GetLBFrontendIpConfiguration>(map['frontendIpConfigurations']!, (value) => GetLBFrontendIpConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      privateIpAddresses: (map['privateIpAddresses'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
