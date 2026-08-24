// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountTokenPolicyPermissionGroup {
  /// Identifier of the permission group.
  final pulumi.Input<String> id;

  /// Creates a new [AccountTokenPolicyPermissionGroup].
  /// [id] Identifier of the permission group.
  const AccountTokenPolicyPermissionGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccountTokenPolicyPermissionGroup.fromMap(Map<String, dynamic> map) {
    return AccountTokenPolicyPermissionGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
