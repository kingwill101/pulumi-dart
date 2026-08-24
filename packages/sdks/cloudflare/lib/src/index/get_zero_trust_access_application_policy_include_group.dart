// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyIncludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyIncludeGroup].
  /// [id] The ID of a previously created Access group.
  const GetZeroTrustAccessApplicationPolicyIncludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyIncludeGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyIncludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
