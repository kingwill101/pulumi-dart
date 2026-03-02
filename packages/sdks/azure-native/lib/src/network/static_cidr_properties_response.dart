// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of static CIDR resource.
class StaticCidrPropertiesResponse {
  /// List of IP address prefixes of the resource.
  final pulumi.Input<List<String>>? addressPrefixes;
  final pulumi.Input<String>? description;
  /// Number of IP addresses to allocate for a static CIDR resource. The IP addresses will be assigned based on IpamPools available space.
  final pulumi.Input<String>? numberOfIPAddressesToAllocate;
  /// Provisioning states of a resource.
  final pulumi.Input<String> provisioningState;
  /// Total number of IP addresses allocated for the static CIDR resource.
  final pulumi.Input<String> totalNumberOfIPAddresses;

  /// Creates a new [StaticCidrPropertiesResponse].
  /// [addressPrefixes] List of IP address prefixes of the resource.
  /// [description] Optional.
  /// [numberOfIPAddressesToAllocate] Number of IP addresses to allocate for a static CIDR resource. The IP addresses will be assigned based on IpamPools available space.
  /// [provisioningState] Provisioning states of a resource.
  /// [totalNumberOfIPAddresses] Total number of IP addresses allocated for the static CIDR resource.
  StaticCidrPropertiesResponse({
    this.addressPrefixes,
    this.description,
    this.numberOfIPAddressesToAllocate,
    required this.provisioningState,
    required this.totalNumberOfIPAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'description': ?description,
      'numberOfIPAddressesToAllocate': ?numberOfIPAddressesToAllocate,
      'provisioningState': provisioningState,
      'totalNumberOfIPAddresses': totalNumberOfIPAddresses,
    };
  }

  factory StaticCidrPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return StaticCidrPropertiesResponse(
      addressPrefixes: map['addressPrefixes'] == null ? null : ((map['addressPrefixes']! as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      numberOfIPAddressesToAllocate: map['numberOfIPAddressesToAllocate'] == null ? null : (map['numberOfIPAddressesToAllocate']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      totalNumberOfIPAddresses: (map['totalNumberOfIPAddresses'] as String).input(),
    );
  }
}

