// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_lbfrontend_ip_configuration.dart';

/// Result data returned by getLB.
class GetLBResult {
  /// A `frontendIpConfiguration` block as documented below.
  final List<GetLBFrontendIpConfiguration>? frontendIpConfigurations;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure location where the Load Balancer exists.
  final String? location;
  /// The name of the Frontend IP Configuration.
  final String? name;
  /// Private IP Address to assign to the Load Balancer.
  final String? privateIpAddress;
  /// The list of private IP address assigned to the load balancer in `frontendIpConfiguration` blocks, if any.
  final List<String>? privateIpAddresses;
  final String? resourceGroupName;
  /// The SKU of the Load Balancer.
  final String? sku;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetLBResult].
  /// [frontendIpConfigurations] A `frontendIpConfiguration` block as documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location where the Load Balancer exists.
  /// [name] The name of the Frontend IP Configuration.
  /// [privateIpAddress] Private IP Address to assign to the Load Balancer.
  /// [privateIpAddresses] The list of private IP address assigned to the load balancer in `frontendIpConfiguration` blocks, if any.
  /// [resourceGroupName] Optional.
  /// [sku] The SKU of the Load Balancer.
  /// [tags] A mapping of tags assigned to the resource.
  const GetLBResult({
    this.frontendIpConfigurations,
    this.id,
    this.location,
    this.name,
    this.privateIpAddress,
    this.privateIpAddresses,
    this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frontendIpConfigurations': ?(() { final guardedValue = frontendIpConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetLBFrontendIpConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAddresses': ?privateIpAddresses,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory GetLBResult.fromMap(Map<String, dynamic> map) {
    return GetLBResult(
      frontendIpConfigurations: (() { final guardedValue = map['frontendIpConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetLBFrontendIpConfiguration>(guardedValue, (value) => GetLBFrontendIpConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateIpAddresses: (() { final guardedValue = map['privateIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
