// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultIncludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPoliciesResultIncludeGroup].
  /// [id] The ID of a previously created Access group.
  const GetZeroTrustAccessPoliciesResultIncludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPoliciesResultIncludeGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultIncludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
