// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyExcludeGeo {
  /// The country code that should be matched.
  final pulumi.Input<String> countryCode;

  /// Creates a new [AccessApplicationPolicyExcludeGeo].
  /// [countryCode] The country code that should be matched.
  const AccessApplicationPolicyExcludeGeo({
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countryCode': countryCode,
    };
  }

  factory AccessApplicationPolicyExcludeGeo.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyExcludeGeo(
      countryCode: pulumi.Input.fromValue(map['countryCode'] as String),
    );
  }
}
