// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyRequireGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [ZeroTrustAccessPolicyRequireGeo].
  /// [countryCode] The country code that should be matched.
  const ZeroTrustAccessPolicyRequireGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory ZeroTrustAccessPolicyRequireGeo.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyRequireGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
