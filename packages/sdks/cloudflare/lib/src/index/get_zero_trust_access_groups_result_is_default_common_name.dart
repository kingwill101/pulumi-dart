// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessGroupsResultIsDefaultCommonName {
  /// The common name to match.
  final pulumi.Input<String> commonName;

  /// Creates a new [GetZeroTrustAccessGroupsResultIsDefaultCommonName].
  /// [commonName] The common name to match.
  const GetZeroTrustAccessGroupsResultIsDefaultCommonName({
    required this.commonName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonName': commonName,
    };
  }

  factory GetZeroTrustAccessGroupsResultIsDefaultCommonName.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessGroupsResultIsDefaultCommonName(
      commonName: pulumi.Input.fromValue(map['commonName'] as String),
    );
  }
}
