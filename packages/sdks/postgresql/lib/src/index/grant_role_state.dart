// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GrantRole resources.
class GrantRoleState {
  /// The name of the role that is added to `role`.
  final pulumi.Input<String>? grantRole;
  /// The name of the role that is granted a new membership.
  final pulumi.Input<String>? role;
  /// Giving ability to grant membership to others or not for `role`. (Default: false)
  final pulumi.Input<bool>? withAdminOption;

  /// Creates a new [GrantRoleState].
  /// [grantRole] The name of the role that is added to `role`.
  /// [role] The name of the role that is granted a new membership.
  /// [withAdminOption] Giving ability to grant membership to others or not for `role`. (Default: false)
  const GrantRoleState({
    this.grantRole,
    this.role,
    this.withAdminOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantRole': ?grantRole,
      'role': ?role,
      'withAdminOption': ?withAdminOption,
    };
  }

  factory GrantRoleState.fromMap(Map<String, dynamic> map) {
    return GrantRoleState(
      grantRole: (() { final guardedValue = map['grantRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      withAdminOption: (() { final guardedValue = map['withAdminOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

