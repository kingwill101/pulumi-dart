// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessPolicyIncludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessPolicyIncludeGroup].
  /// [id] The ID of a previously created Access group.
  const GetZeroTrustAccessPolicyIncludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessPolicyIncludeGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessPolicyIncludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
