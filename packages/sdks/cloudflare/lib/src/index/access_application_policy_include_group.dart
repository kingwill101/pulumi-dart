// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationPolicyIncludeGroup {
  /// The ID of a previously created Access group.
  final pulumi.Input<String> id;

  /// Creates a new [AccessApplicationPolicyIncludeGroup].
  /// [id] The ID of a previously created Access group.
  const AccessApplicationPolicyIncludeGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccessApplicationPolicyIncludeGroup.fromMap(Map<String, dynamic> map) {
    return AccessApplicationPolicyIncludeGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
