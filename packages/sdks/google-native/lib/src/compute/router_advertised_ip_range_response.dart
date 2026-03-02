// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description-tagged IP ranges for the router to advertise.
class RouterAdvertisedIpRangeResponse {
  /// User-specified description for the IP range.
  final pulumi.Input<String> description;
  /// The IP range to advertise. The value must be a CIDR-formatted string.
  final pulumi.Input<String> range;

  /// Creates a new [RouterAdvertisedIpRangeResponse].
  /// [description] User-specified description for the IP range.
  /// [range] The IP range to advertise. The value must be a CIDR-formatted string.
  RouterAdvertisedIpRangeResponse({
    required this.description,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'range': range,
    };
  }

  factory RouterAdvertisedIpRangeResponse.fromMap(Map<String, dynamic> map) {
    return RouterAdvertisedIpRangeResponse(
      description: (map['description'] as String).input(),
      range: (map['range'] as String).input(),
    );
  }
}

