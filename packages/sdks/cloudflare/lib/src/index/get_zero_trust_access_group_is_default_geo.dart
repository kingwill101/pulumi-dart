// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupIsDefaultGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [GetZeroTrustAccessGroupIsDefaultGeo].
  /// [countryCode] The country code that should be matched.
  const GetZeroTrustAccessGroupIsDefaultGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory GetZeroTrustAccessGroupIsDefaultGeo.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIsDefaultGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
