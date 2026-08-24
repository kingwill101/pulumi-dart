// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupIsDefaultCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [GetZeroTrustAccessGroupIsDefaultCommonName].
  /// [commonName] The common name to match.
  const GetZeroTrustAccessGroupIsDefaultCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory GetZeroTrustAccessGroupIsDefaultCommonName.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupIsDefaultCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
