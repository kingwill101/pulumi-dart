// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyExcludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [AccessPolicyExcludeGroup].
  /// [id] The ID of a previously created Access group.
  const AccessPolicyExcludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessPolicyExcludeGroup.fromMap(Map<String, dynamic> map) {
    return AccessPolicyExcludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
