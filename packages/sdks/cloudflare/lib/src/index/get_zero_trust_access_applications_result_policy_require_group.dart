// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultPolicyRequireGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessApplicationsResultPolicyRequireGroup].
  /// [id] The ID of a previously created Access group.
  const GetZeroTrustAccessApplicationsResultPolicyRequireGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessApplicationsResultPolicyRequireGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultPolicyRequireGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
