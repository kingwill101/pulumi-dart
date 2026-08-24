// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyRequireCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [ZeroTrustAccessPolicyRequireCommonName].
  /// [commonName] The common name to match.
  const ZeroTrustAccessPolicyRequireCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory ZeroTrustAccessPolicyRequireCommonName.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyRequireCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
