// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiTokenPolicyPermissionGroup {
  /// Identifier of the permission group.
  final pulumi.Input<String> id;

  /// Creates a new [ApiTokenPolicyPermissionGroup].
  /// [id] Identifier of the permission group.
  const ApiTokenPolicyPermissionGroup({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ApiTokenPolicyPermissionGroup.fromMap(Map<String, dynamic> map) {
    return ApiTokenPolicyPermissionGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
