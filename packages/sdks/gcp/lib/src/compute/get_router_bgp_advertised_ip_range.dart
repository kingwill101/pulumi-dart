// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouterBgpAdvertisedIpRange {
  /// User-specified description for the IP range.
  final pulumi.Input<String> description;
  /// The IP range to advertise. The value must be a
  /// CIDR-formatted string.
  final pulumi.Input<String> range;

  /// Creates a new [GetRouterBgpAdvertisedIpRange].
  /// [description] User-specified description for the IP range.
  /// [range] The IP range to advertise. The value must be a
  const GetRouterBgpAdvertisedIpRange({
    required this.description,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'range': range,
    };
  }

  factory GetRouterBgpAdvertisedIpRange.fromMap(Map<String, dynamic> map) {
    return GetRouterBgpAdvertisedIpRange(
      description: pulumi.Input.fromValue(map['description'] as String),
      range: pulumi.Input.fromValue(map['range'] as String),
    );
  }
}

