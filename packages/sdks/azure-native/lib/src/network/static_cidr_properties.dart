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
  StaticCidrProperties({
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
      addressPrefixes: map['addressPrefixes'] == null ? null : ((map['addressPrefixes']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      numberOfIPAddressesToAllocate: map['numberOfIPAddressesToAllocate'] == null ? null : (map['numberOfIPAddressesToAllocate']! as String).input(),
    );
  }
}

