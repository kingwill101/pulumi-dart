// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyIncludeCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [ZeroTrustAccessApplicationPolicyIncludeCommonName].
  /// [commonName] The common name to match.
  const ZeroTrustAccessApplicationPolicyIncludeCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory ZeroTrustAccessApplicationPolicyIncludeCommonName.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyIncludeCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
