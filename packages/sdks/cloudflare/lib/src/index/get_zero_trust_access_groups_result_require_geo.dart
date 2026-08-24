// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultRequireGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [GetZeroTrustAccessGroupsResultRequireGeo].
  /// [countryCode] The country code that should be matched.
  const GetZeroTrustAccessGroupsResultRequireGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory GetZeroTrustAccessGroupsResultRequireGeo.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultRequireGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
