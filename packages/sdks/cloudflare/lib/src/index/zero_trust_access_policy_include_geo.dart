// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyIncludeGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [ZeroTrustAccessPolicyIncludeGeo].
  /// [countryCode] The country code that should be matched.
  const ZeroTrustAccessPolicyIncludeGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory ZeroTrustAccessPolicyIncludeGeo.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyIncludeGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
