// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDeviceCustomProfileFilter {
  /// Filter profiles by client type. When omitted, only WARP profiles are returned.
  /// Available values: "warp", "browserExtension".
  final pulumi.Input<String> profileType;

  /// Creates a new [GetZeroTrustDeviceCustomProfileFilter].
  /// [profileType] Filter profiles by client type. When omitted, only WARP profiles are returned.
  const GetZeroTrustDeviceCustomProfileFilter({
    required this.profileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileType': profileType,
    };
  }

  factory GetZeroTrustDeviceCustomProfileFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceCustomProfileFilter(
      profileType: pulumi.Input.fromValue(map['profileType'] as String),
    );
  }
}
