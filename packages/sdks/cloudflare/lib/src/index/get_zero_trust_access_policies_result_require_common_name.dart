// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultRequireCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [GetZeroTrustAccessPoliciesResultRequireCommonName].
  /// [commonName] The common name to match.
  const GetZeroTrustAccessPoliciesResultRequireCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory GetZeroTrustAccessPoliciesResultRequireCommonName.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultRequireCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
