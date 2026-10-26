// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationTargetCriteriaExcludeTargetAttributes {
  final pulumi.Input<List<String>> hostnames;

  /// Creates a new [GetZeroTrustAccessApplicationTargetCriteriaExcludeTargetAttributes].
  /// [hostnames] Required.
  const GetZeroTrustAccessApplicationTargetCriteriaExcludeTargetAttributes({
    required this.hostnames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': hostnames,
    };
  }

  factory GetZeroTrustAccessApplicationTargetCriteriaExcludeTargetAttributes.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationTargetCriteriaExcludeTargetAttributes(
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
    );
  }
}
