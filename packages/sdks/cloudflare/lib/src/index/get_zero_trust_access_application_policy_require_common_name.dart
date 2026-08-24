// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyRequireCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyRequireCommonName].
  /// [commonName] The common name to match.
  const GetZeroTrustAccessApplicationPolicyRequireCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyRequireCommonName.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyRequireCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
