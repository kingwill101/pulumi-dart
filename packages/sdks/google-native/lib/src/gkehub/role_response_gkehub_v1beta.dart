// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Role is the type for Kubernetes roles
class RoleResponseGkehubV1beta {
  /// predefined_role is the Kubernetes default role to use
  final pulumi.Input<String> predefinedRole;

  /// Creates a new [RoleResponseGkehubV1beta].
  /// [predefinedRole] predefined_role is the Kubernetes default role to use
  RoleResponseGkehubV1beta({
    required this.predefinedRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predefinedRole': predefinedRole,
    };
  }

  factory RoleResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return RoleResponseGkehubV1beta(
      predefinedRole: (map['predefinedRole'] as String).input(),
    );
  }
}

