// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIncludeGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [GetZeroTrustAccessGroupsResultIncludeGeo].
  /// [countryCode] The country code that should be matched.
  const GetZeroTrustAccessGroupsResultIncludeGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory GetZeroTrustAccessGroupsResultIncludeGeo.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIncludeGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
