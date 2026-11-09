// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationTargetCriteriaRequireTargetAttributes {
  final pulumi.Input<List<String>> hostnames;

  /// Creates a new [ZeroTrustAccessApplicationTargetCriteriaRequireTargetAttributes].
  /// [hostnames] Required.
  const ZeroTrustAccessApplicationTargetCriteriaRequireTargetAttributes({
    required this.hostnames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': hostnames,
    };
  }

  factory ZeroTrustAccessApplicationTargetCriteriaRequireTargetAttributes.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationTargetCriteriaRequireTargetAttributes(
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
    );
  }
}
