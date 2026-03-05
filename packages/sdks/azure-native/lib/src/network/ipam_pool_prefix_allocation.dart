// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IpamPool prefix allocation reference.
class IpamPoolPrefixAllocation {
  /// Resource id of the associated Azure IpamPool resource.
  final pulumi.Input<String>? id;
  /// Number of IP addresses to allocate.
  final pulumi.Input<String>? numberOfIpAddresses;

  /// Creates a new [IpamPoolPrefixAllocation].
  /// [id] Resource id of the associated Azure IpamPool resource.
  /// [numberOfIpAddresses] Number of IP addresses to allocate.
  IpamPoolPrefixAllocation({
    this.id,
    this.numberOfIpAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'numberOfIpAddresses': ?numberOfIpAddresses,
    };
  }

  factory IpamPoolPrefixAllocation.fromMap(Map<String, dynamic> map) {
    return IpamPoolPrefixAllocation(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfIpAddresses: (() { final guardedValue = map['numberOfIpAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

