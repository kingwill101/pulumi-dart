// ignore_for_file: unused_element, unnecessary_cast

import 'public_ipaddress.dart';
import 'sub_resource.dart';
import 'subnet.dart';

/// Frontend IP address of the load balancer.
class FrontendIPConfiguration {
  /// The reference to gateway load balancer frontend IP.
  final SubResource? gatewayLoadBalancer;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within the set of frontend IP configurations used by the load balancer. This name can be used to access the resource.
  final String? name;
  /// The private IP address of the IP configuration.
  final String? privateIPAddress;
  /// Whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.
  final String? privateIPAddressVersion;
  /// The Private IP allocation method.
  final String? privateIPAllocationMethod;
  /// The reference to the Public IP resource.
  final PublicIPAddress? publicIPAddress;
  /// The reference to the Public IP Prefix resource.
  final SubResource? publicIPPrefix;
  /// The reference to the subnet resource.
  final Subnet? subnet;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final List<String>? zones;

  /// Creates a new [FrontendIPConfiguration].
  /// [gatewayLoadBalancer] The reference to gateway load balancer frontend IP.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within the set of frontend IP configurations used by the load balancer. This name can be used to access the resource.
  /// [privateIPAddress] The private IP address of the IP configuration.
  /// [privateIPAddressVersion] Whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.
  /// [privateIPAllocationMethod] The Private IP allocation method.
  /// [publicIPAddress] The reference to the Public IP resource.
  /// [publicIPPrefix] The reference to the Public IP Prefix resource.
  /// [subnet] The reference to the subnet resource.
  /// [zones] A list of availability zones denoting the IP allocated for the resource needs to come from.
  FrontendIPConfiguration({
    this.gatewayLoadBalancer,
    this.id,
    this.name,
    this.privateIPAddress,
    this.privateIPAddressVersion,
    this.privateIPAllocationMethod,
    this.publicIPAddress,
    this.publicIPPrefix,
    this.subnet,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayLoadBalancer': ?gatewayLoadBalancer == null ? null : gatewayLoadBalancer!.toMap(),
      'id': ?id,
      'name': ?name,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'publicIPAddress': ?publicIPAddress == null ? null : publicIPAddress!.toMap(),
      'publicIPPrefix': ?publicIPPrefix == null ? null : publicIPPrefix!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'zones': ?zones,
    };
  }

  factory FrontendIPConfiguration.fromMap(Map<String, dynamic> map) {
    return FrontendIPConfiguration(
      gatewayLoadBalancer: map['gatewayLoadBalancer'] == null ? null : SubResource.fromMap((map['gatewayLoadBalancer'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      privateIPAddressVersion: map['privateIPAddressVersion'] == null ? null : map['privateIPAddressVersion'] as String,
      privateIPAllocationMethod: map['privateIPAllocationMethod'] == null ? null : map['privateIPAllocationMethod'] as String,
      publicIPAddress: map['publicIPAddress'] == null ? null : PublicIPAddress.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
      publicIPPrefix: map['publicIPPrefix'] == null ? null : SubResource.fromMap((map['publicIPPrefix'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : Subnet.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

