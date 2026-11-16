// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationTargetCriteriaExcludeTargetAttributes {
  final pulumi.Input<List<String>> hostnames;

  /// Creates a new [ZeroTrustAccessApplicationTargetCriteriaExcludeTargetAttributes].
  /// [hostnames] Required.
  const ZeroTrustAccessApplicationTargetCriteriaExcludeTargetAttributes({
    required this.hostnames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': hostnames,
    };
  }

  factory ZeroTrustAccessApplicationTargetCriteriaExcludeTargetAttributes.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationTargetCriteriaExcludeTargetAttributes(
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
    );
  }
}
