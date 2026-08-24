// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessGroupRequireCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [ZeroTrustAccessGroupRequireCommonName].
  /// [commonName] The common name to match.
  const ZeroTrustAccessGroupRequireCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory ZeroTrustAccessGroupRequireCommonName.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessGroupRequireCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
