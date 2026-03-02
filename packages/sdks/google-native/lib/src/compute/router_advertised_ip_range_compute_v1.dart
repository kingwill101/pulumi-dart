// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description-tagged IP ranges for the router to advertise.
class RouterAdvertisedIpRangeComputeV1 {
  /// User-specified description for the IP range.
  final pulumi.Input<String>? description;
  /// The IP range to advertise. The value must be a CIDR-formatted string.
  final pulumi.Input<String>? range;

  /// Creates a new [RouterAdvertisedIpRangeComputeV1].
  /// [description] User-specified description for the IP range.
  /// [range] The IP range to advertise. The value must be a CIDR-formatted string.
  RouterAdvertisedIpRangeComputeV1({
    this.description,
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'range': ?range,
    };
  }

  factory RouterAdvertisedIpRangeComputeV1.fromMap(Map<String, dynamic> map) {
    return RouterAdvertisedIpRangeComputeV1(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      range: map['range'] == null ? null : (map['range'] as String).input(),
    );
  }
}

