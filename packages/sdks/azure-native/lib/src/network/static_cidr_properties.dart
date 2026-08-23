// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of static CIDR resource.
class StaticCidrProperties {
  /// List of IP address prefixes of the resource.
  final pulumi.Input<List<String>>? addressPrefixes;
  final pulumi.Input<String>? description;
  /// Number of IP addresses to allocate for a static CIDR resource. The IP addresses will be assigned based on IpamPools available space.
  final pulumi.Input<String>? numberOfIPAddressesToAllocate;

  /// Creates a new [StaticCidrProperties].
  /// [addressPrefixes] List of IP address prefixes of the resource.
  /// [description] Optional.
  /// [numberOfIPAddressesToAllocate] Number of IP addresses to allocate for a static CIDR resource. The IP addresses will be assigned based on IpamPools available space.
  const StaticCidrProperties({
    this.addressPrefixes,
    this.description,
    this.numberOfIPAddressesToAllocate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'description': ?description,
      'numberOfIPAddressesToAllocate': ?numberOfIPAddressesToAllocate,
    };
  }

  factory StaticCidrProperties.fromMap(Map<String, dynamic> map) {
    return StaticCidrProperties(
      addressPrefixes: (() { final guardedValue = map['addressPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfIPAddressesToAllocate: (() { final guardedValue = map['numberOfIPAddressesToAllocate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
