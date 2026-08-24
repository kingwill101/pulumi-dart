// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyIncludeGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyIncludeGeo].
  /// [countryCode] The country code that should be matched.
  const GetZeroTrustAccessApplicationPolicyIncludeGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyIncludeGeo.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyIncludeGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
