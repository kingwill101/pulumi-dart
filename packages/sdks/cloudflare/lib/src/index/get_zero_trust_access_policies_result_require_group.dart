// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultRequireGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPoliciesResultRequireGroup].
  /// [id] The ID of a previously created Access group.
  const GetZeroTrustAccessPoliciesResultRequireGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPoliciesResultRequireGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultRequireGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
