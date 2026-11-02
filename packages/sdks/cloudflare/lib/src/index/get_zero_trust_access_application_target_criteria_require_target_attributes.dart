// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationTargetCriteriaRequireTargetAttributes {
  final pulumi.Input<List<String>> hostnames;

  /// Creates a new [GetZeroTrustAccessApplicationTargetCriteriaRequireTargetAttributes].
  /// [hostnames] Required.
  const GetZeroTrustAccessApplicationTargetCriteriaRequireTargetAttributes({
    required this.hostnames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': hostnames,
    };
  }

  factory GetZeroTrustAccessApplicationTargetCriteriaRequireTargetAttributes.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationTargetCriteriaRequireTargetAttributes(
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
    );
  }
}
