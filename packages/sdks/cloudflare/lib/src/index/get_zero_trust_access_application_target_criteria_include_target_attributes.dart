// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes {
  final pulumi.Input<List<String>> hostnames;

  /// Creates a new [GetZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes].
  /// [hostnames] Required.
  const GetZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes({
    required this.hostnames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': hostnames,
    };
  }

  factory GetZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationTargetCriteriaIncludeTargetAttributes(
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
    );
  }
}
