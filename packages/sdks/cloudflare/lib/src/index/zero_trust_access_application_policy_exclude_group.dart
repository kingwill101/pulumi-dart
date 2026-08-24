// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyExcludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessApplicationPolicyExcludeGroup].
  /// [id] The ID of a previously created Access group.
  const ZeroTrustAccessApplicationPolicyExcludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessApplicationPolicyExcludeGroup.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyExcludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
