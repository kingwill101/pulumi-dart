// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyRequireGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [ZeroTrustAccessApplicationPolicyRequireGeo].
  /// [countryCode] The country code that should be matched.
  const ZeroTrustAccessApplicationPolicyRequireGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory ZeroTrustAccessApplicationPolicyRequireGeo.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyRequireGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
