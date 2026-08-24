// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyRequireGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyRequireGeo].
  /// [countryCode] The country code that should be matched.
  const GetZeroTrustAccessApplicationPolicyRequireGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyRequireGeo.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyRequireGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
