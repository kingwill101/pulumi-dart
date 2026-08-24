// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyRequireGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessApplicationPolicyRequireGroup].
  /// [id] The ID of a previously created Access group.
  const ZeroTrustAccessApplicationPolicyRequireGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessApplicationPolicyRequireGroup.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyRequireGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
