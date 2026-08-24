// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustAccessApplicationPolicyIncludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [ZeroTrustAccessApplicationPolicyIncludeGroup].
  /// [id] The ID of a previously created Access group.
  const ZeroTrustAccessApplicationPolicyIncludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ZeroTrustAccessApplicationPolicyIncludeGroup.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessApplicationPolicyIncludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
