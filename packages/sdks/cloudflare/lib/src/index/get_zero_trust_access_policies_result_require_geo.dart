// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultRequireGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [GetZeroTrustAccessPoliciesResultRequireGeo].
  /// [countryCode] The country code that should be matched.
  const GetZeroTrustAccessPoliciesResultRequireGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory GetZeroTrustAccessPoliciesResultRequireGeo.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultRequireGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
