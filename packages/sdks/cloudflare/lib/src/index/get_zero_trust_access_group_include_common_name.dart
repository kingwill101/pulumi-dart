// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupIncludeCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [GetZeroTrustAccessGroupIncludeCommonName].
  /// [commonName] The common name to match.
  const GetZeroTrustAccessGroupIncludeCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory GetZeroTrustAccessGroupIncludeCommonName.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIncludeCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
