// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyExcludeCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyExcludeCommonName].
  /// [commonName] The common name to match.
  const GetZeroTrustAccessApplicationPolicyExcludeCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyExcludeCommonName.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyExcludeCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
