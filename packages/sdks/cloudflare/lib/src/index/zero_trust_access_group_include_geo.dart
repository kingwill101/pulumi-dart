// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupIncludeGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [ZeroTrustAccessGroupIncludeGeo].
  /// [countryCode] The country code that should be matched.
  const ZeroTrustAccessGroupIncludeGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory ZeroTrustAccessGroupIncludeGeo.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupIncludeGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
