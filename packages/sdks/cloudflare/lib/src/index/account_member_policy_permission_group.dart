// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountMemberPolicyPermissionGroup {
  /// Identifier of the group.
  final pulumi.Input<String> id;

  /// Creates a new [AccountMemberPolicyPermissionGroup].
  /// [id] Identifier of the group.
  const AccountMemberPolicyPermissionGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AccountMemberPolicyPermissionGroup.fromMap(Map<String, dynamic> map) {
    return AccountMemberPolicyPermissionGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
