// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultTargetCriteriaRequireTargetAttributes {
  final pulumi.Input<List<String>> hostnames;

  /// Creates a new [GetZeroTrustAccessApplicationsResultTargetCriteriaRequireTargetAttributes].
  /// [hostnames] Required.
  const GetZeroTrustAccessApplicationsResultTargetCriteriaRequireTargetAttributes({
    required this.hostnames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': hostnames,
    };
  }

  factory GetZeroTrustAccessApplicationsResultTargetCriteriaRequireTargetAttributes.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultTargetCriteriaRequireTargetAttributes(
      hostnames: pulumi.Input.fromValue((map['hostnames'] as List).cast<String>()),
    );
  }
}
