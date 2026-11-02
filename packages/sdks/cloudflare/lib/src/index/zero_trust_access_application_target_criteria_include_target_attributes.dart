// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes {
  final pulumi.Input<List<String>> hostnames;

  /// Creates a new [ZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes].
  /// [hostnames] Required.
  const ZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes({
    required this.hostnames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': hostnames,
    };
  }

  factory ZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes(
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
    );
  }
}
