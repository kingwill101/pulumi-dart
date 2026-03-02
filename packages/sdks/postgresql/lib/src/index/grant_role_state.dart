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
  GrantRoleState({
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
      grantRole: map['grantRole'] == null ? null : (map['grantRole'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
      withAdminOption: map['withAdminOption'] == null ? null : (map['withAdminOption'] as bool).input(),
    );
  }
}

