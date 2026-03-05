// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoutersRouterBgpAdvertisedIpRange {
  final pulumi.Input<String> description;
  final pulumi.Input<String> range;

  /// Creates a new [GetRoutersRouterBgpAdvertisedIpRange].
  /// [description] Required.
  /// [range] Required.
  GetRoutersRouterBgpAdvertisedIpRange({
    required this.description,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'range': range,
    };
  }

  factory GetRoutersRouterBgpAdvertisedIpRange.fromMap(Map<String, dynamic> map) {
    return GetRoutersRouterBgpAdvertisedIpRange(
      description: pulumi.Input.fromValue(map['description'] as String),
      range: pulumi.Input.fromValue(map['range'] as String),
    );
  }
}

