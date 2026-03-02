// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionPerInstanceConfigPreservedStateExternalIpIpAddress {
  /// The URL of the reservation for this IP address.
  final pulumi.Input<String>? address;

  /// Creates a new [RegionPerInstanceConfigPreservedStateExternalIpIpAddress].
  /// [address] The URL of the reservation for this IP address.
  RegionPerInstanceConfigPreservedStateExternalIpIpAddress({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory RegionPerInstanceConfigPreservedStateExternalIpIpAddress.fromMap(Map<String, dynamic> map) {
    return RegionPerInstanceConfigPreservedStateExternalIpIpAddress(
      address: map['address'] == null ? null : (map['address'] as String).input(),
    );
  }
}

