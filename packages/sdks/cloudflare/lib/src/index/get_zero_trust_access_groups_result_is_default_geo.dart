// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIsDefaultGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [GetZeroTrustAccessGroupsResultIsDefaultGeo].
  /// [countryCode] The country code that should be matched.
  const GetZeroTrustAccessGroupsResultIsDefaultGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory GetZeroTrustAccessGroupsResultIsDefaultGeo.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIsDefaultGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
