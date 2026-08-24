// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationPolicyRequireGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [GetZeroTrustAccessApplicationPolicyRequireGroup].
  /// [id] The ID of a previously created Access group.
  const GetZeroTrustAccessApplicationPolicyRequireGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetZeroTrustAccessApplicationPolicyRequireGroup.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationPolicyRequireGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
