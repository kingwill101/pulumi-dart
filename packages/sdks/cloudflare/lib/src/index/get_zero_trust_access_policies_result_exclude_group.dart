// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPoliciesResultExcludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPoliciesResultExcludeGroup].
  /// [id] The ID of a previously created Access group.
  const GetZeroTrustAccessPoliciesResultExcludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPoliciesResultExcludeGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPoliciesResultExcludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
