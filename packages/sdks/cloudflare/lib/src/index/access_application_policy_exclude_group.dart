// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyExcludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [AccessApplicationPolicyExcludeGroup].
  /// [id] The ID of a previously created Access group.
  const AccessApplicationPolicyExcludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessApplicationPolicyExcludeGroup.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyExcludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
