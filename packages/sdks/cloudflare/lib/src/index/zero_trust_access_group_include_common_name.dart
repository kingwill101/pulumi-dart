// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupIncludeCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [ZeroTrustAccessGroupIncludeCommonName].
  /// [commonName] The common name to match.
  const ZeroTrustAccessGroupIncludeCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory ZeroTrustAccessGroupIncludeCommonName.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupIncludeCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
