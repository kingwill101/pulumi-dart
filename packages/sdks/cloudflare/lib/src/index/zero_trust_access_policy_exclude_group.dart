// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessPolicyExcludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessPolicyExcludeGroup].
  /// [id] The ID of a previously created Access group.
  const ZeroTrustAccessPolicyExcludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessPolicyExcludeGroup.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessPolicyExcludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
