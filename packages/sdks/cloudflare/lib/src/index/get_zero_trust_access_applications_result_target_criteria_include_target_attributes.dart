// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultTargetCriteriaIncludeTargetAttributes {
  final pulumi.Input<List<String>> hostnames;

  /// Creates a new [GetZeroTrustAccessApplicationsResultTargetCriteriaIncludeTargetAttributes].
  /// [hostnames] Required.
  const GetZeroTrustAccessApplicationsResultTargetCriteriaIncludeTargetAttributes({
    required this.hostnames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': hostnames,
    };
  }

  factory GetZeroTrustAccessApplicationsResultTargetCriteriaIncludeTargetAttributes.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultTargetCriteriaIncludeTargetAttributes(
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
    );
  }
}
