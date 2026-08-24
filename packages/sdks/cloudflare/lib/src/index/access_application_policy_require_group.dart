// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyRequireGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [AccessApplicationPolicyRequireGroup].
  /// [id] The ID of a previously created Access group.
  const AccessApplicationPolicyRequireGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessApplicationPolicyRequireGroup.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyRequireGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
