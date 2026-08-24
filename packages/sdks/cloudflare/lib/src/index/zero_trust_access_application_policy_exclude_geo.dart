// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyExcludeGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [ZeroTrustAccessApplicationPolicyExcludeGeo].
  /// [countryCode] The country code that should be matched.
  const ZeroTrustAccessApplicationPolicyExcludeGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory ZeroTrustAccessApplicationPolicyExcludeGeo.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyExcludeGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
