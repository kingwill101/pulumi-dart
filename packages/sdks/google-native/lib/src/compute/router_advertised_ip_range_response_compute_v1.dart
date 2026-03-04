// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description-tagged IP ranges for the router to advertise.
class RouterAdvertisedIpRangeResponseComputeV1 {
  /// User-specified description for the IP range.
  final pulumi.Input<String> description;

  /// The IP range to advertise. The value must be a CIDR-formatted string.
  final pulumi.Input<String> range;

  /// Creates a new [RouterAdvertisedIpRangeResponseComputeV1].
  /// [description] User-specified description for the IP range.
  /// [range] The IP range to advertise. The value must be a CIDR-formatted string.
  RouterAdvertisedIpRangeResponseComputeV1({
    required this.description,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': description, 'range': range};
  }

  factory RouterAdvertisedIpRangeResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return RouterAdvertisedIpRangeResponseComputeV1(
      description: pulumi.Input.fromValue(map['description'] as String),
      range: pulumi.Input.fromValue(map['range'] as String),
    );
  }
}
