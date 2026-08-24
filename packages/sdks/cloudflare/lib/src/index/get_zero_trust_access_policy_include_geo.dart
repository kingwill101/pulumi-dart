// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyIncludeGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [GetZeroTrustAccessPolicyIncludeGeo].
  /// [countryCode] The country code that should be matched.
  const GetZeroTrustAccessPolicyIncludeGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory GetZeroTrustAccessPolicyIncludeGeo.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyIncludeGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
