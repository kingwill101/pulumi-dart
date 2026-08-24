// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyIncludeCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [GetZeroTrustAccessPolicyIncludeCommonName].
  /// [commonName] The common name to match.
  const GetZeroTrustAccessPolicyIncludeCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory GetZeroTrustAccessPolicyIncludeCommonName.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyIncludeCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
