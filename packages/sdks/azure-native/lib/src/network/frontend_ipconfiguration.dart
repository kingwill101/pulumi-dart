// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ipaddress.dart';
import 'sub_resource.dart';
import 'subnet.dart';

/// Frontend IP address of the load balancer.
class FrontendIPConfiguration {
  /// The reference to gateway load balancer frontend IP.
  final pulumi.Input<SubResource?>? gatewayLoadBalancer;
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The name of the resource that is unique within the set of frontend IP configurations used by the load balancer. This name can be used to access the resource.
  final pulumi.Input<String?>? name;
  /// The private IP address of the IP configuration.
  final pulumi.Input<String?>? privateIPAddress;
  /// Whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.
  final pulumi.Input<dynamic>? privateIPAddressVersion;
  /// The Private IP allocation method.
  final pulumi.Input<dynamic>? privateIPAllocationMethod;
  /// The reference to the Public IP resource.
  final pulumi.Input<PublicIPAddress?>? publicIPAddress;
  /// The reference to the Public IP Prefix resource.
  final pulumi.Input<SubResource?>? publicIPPrefix;
  /// The reference to the subnet resource.
  final pulumi.Input<Subnet?>? subnet;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final pulumi.Input<List<String>?>? zones;

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
  const FrontendIPConfiguration({
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
      'gatewayLoadBalancer': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(gatewayLoadBalancer, (value) => value.toMap()),
      'id': ?id,
      'name': ?name,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'publicIPAddress': ?pulumi.Input.mapOptionalInputValue<PublicIPAddress, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'publicIPPrefix': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(publicIPPrefix, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<Subnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory FrontendIPConfiguration.fromMap(Map<String, dynamic> map) {
    return FrontendIPConfiguration(
      gatewayLoadBalancer: (() { final guardedValue = map['gatewayLoadBalancer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAddressVersion: (() { final guardedValue = map['privateIPAddressVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      privateIPAllocationMethod: (() { final guardedValue = map['privateIPAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      publicIPAddress: (() { final guardedValue = map['publicIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicIPAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      publicIPPrefix: (() { final guardedValue = map['publicIPPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Subnet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
