// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultPolicyIncludeCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyIncludeCommonName].
  /// [commonName] The common name to match.
  const GetZeroTrustAccessApplicationsResultPolicyIncludeCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyIncludeCommonName.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyIncludeCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
