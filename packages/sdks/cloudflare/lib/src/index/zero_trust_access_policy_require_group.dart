// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyRequireGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessPolicyRequireGroup].
  /// [id] The ID of a previously created Access group.
  const ZeroTrustAccessPolicyRequireGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessPolicyRequireGroup.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyRequireGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
