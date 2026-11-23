// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationRolesApisConfigRole {
  /// IAM role name, such as `roles/editor`.
  final pulumi.Input<String> role;
  /// (Output)
  /// Whether Application Design Center added the role.
  final pulumi.Input<bool?>? systemProvided;

  /// Creates a new [ApplicationRolesApisConfigRole].
  /// [role] IAM role name, such as `roles/editor`.
  /// [systemProvided] (Output)
  const ApplicationRolesApisConfigRole({
    required this.role,
    this.systemProvided,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': role,
      'systemProvided': ?systemProvided,
    };
  }

  factory ApplicationRolesApisConfigRole.fromMap(Map<String, dynamic> map) {
    return ApplicationRolesApisConfigRole(
      role: pulumi.Input.fromValue(map['role'] as String),
      systemProvided: (() { final guardedValue = map['systemProvided']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
