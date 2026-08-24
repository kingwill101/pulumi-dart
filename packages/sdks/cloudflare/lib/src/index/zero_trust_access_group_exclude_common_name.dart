// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupExcludeCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [ZeroTrustAccessGroupExcludeCommonName].
  /// [commonName] The common name to match.
  const ZeroTrustAccessGroupExcludeCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory ZeroTrustAccessGroupExcludeCommonName.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupExcludeCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
