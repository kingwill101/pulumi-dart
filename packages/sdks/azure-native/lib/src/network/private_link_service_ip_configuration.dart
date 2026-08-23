// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet.dart';

/// The private link service ip configuration.
class PrivateLinkServiceIpConfiguration {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of private link service ip configuration.
  final pulumi.Input<String>? name;
  /// Whether the ip configuration is primary or not.
  final pulumi.Input<bool>? primary;
  /// The private IP address of the IP configuration.
  final pulumi.Input<String>? privateIPAddress;
  /// Whether the specific IP configuration is IPv4 or IPv6. Default is IPv4.
  final pulumi.Input<String>? privateIPAddressVersion;
  /// The private IP address allocation method.
  final pulumi.Input<String>? privateIPAllocationMethod;
  /// The reference to the subnet resource.
  final pulumi.Input<Subnet>? subnet;

  /// Creates a new [PrivateLinkServiceIpConfiguration].
  /// [id] Resource ID.
  /// [name] The name of private link service ip configuration.
  /// [primary] Whether the ip configuration is primary or not.
  /// [privateIPAddress] The private IP address of the IP configuration.
  /// [privateIPAddressVersion] Whether the specific IP configuration is IPv4 or IPv6. Default is IPv4.
  /// [privateIPAllocationMethod] The private IP address allocation method.
  /// [subnet] The reference to the subnet resource.
  const PrivateLinkServiceIpConfiguration({
    this.id,
    this.name,
    this.primary,
    this.privateIPAddress,
    this.privateIPAddressVersion,
    this.privateIPAllocationMethod,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'primary': ?primary,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAddressVersion': ?privateIPAddressVersion,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'subnet': ?pulumi.Input.mapOptionalInputValue<Subnet, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory PrivateLinkServiceIpConfiguration.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceIpConfiguration(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primary: (() { final guardedValue = map['primary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAddressVersion: (() { final guardedValue = map['privateIPAddressVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIPAllocationMethod: (() { final guardedValue = map['privateIPAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Subnet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
