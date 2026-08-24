// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupIncludeGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [AccessGroupIncludeGeo].
  /// [countryCode] The country code that should be matched.
  const AccessGroupIncludeGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory AccessGroupIncludeGeo.fromMap(Map<String, dynamic> map) {
    return AccessGroupIncludeGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
