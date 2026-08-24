// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyIncludeGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [ZeroTrustAccessApplicationPolicyIncludeGeo].
  /// [countryCode] The country code that should be matched.
  const ZeroTrustAccessApplicationPolicyIncludeGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory ZeroTrustAccessApplicationPolicyIncludeGeo.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyIncludeGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
