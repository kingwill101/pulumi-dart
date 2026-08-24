// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupRequireCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [GetZeroTrustAccessGroupRequireCommonName].
  /// [commonName] The common name to match.
  const GetZeroTrustAccessGroupRequireCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory GetZeroTrustAccessGroupRequireCommonName.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupRequireCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
