// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupRequireGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [AccessGroupRequireGeo].
  /// [countryCode] The country code that should be matched.
  const AccessGroupRequireGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory AccessGroupRequireGeo.fromMap(Map<String, dynamic> map) {
    return AccessGroupRequireGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
