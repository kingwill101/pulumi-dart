// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyRequireCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [ZeroTrustAccessApplicationPolicyRequireCommonName].
  /// [commonName] The common name to match.
  const ZeroTrustAccessApplicationPolicyRequireCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory ZeroTrustAccessApplicationPolicyRequireCommonName.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyRequireCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
