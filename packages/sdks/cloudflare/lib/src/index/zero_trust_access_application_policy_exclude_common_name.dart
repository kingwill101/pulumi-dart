// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyExcludeCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [ZeroTrustAccessApplicationPolicyExcludeCommonName].
  /// [commonName] The common name to match.
  const ZeroTrustAccessApplicationPolicyExcludeCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory ZeroTrustAccessApplicationPolicyExcludeCommonName.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyExcludeCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
