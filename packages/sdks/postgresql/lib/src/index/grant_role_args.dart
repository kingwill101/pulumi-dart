// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_grant_role_grant_role_args_doc}
/// The set of arguments for GrantRole.
/// {@endtemplate}
/// {@macro pulumi_index_grant_role_grant_role_args_doc}
class GrantRoleArgs {
  /// The name of the role that is added to `role`.
  final pulumi.Input<String> grantRole;
  /// The name of the role that is granted a new membership.
  final pulumi.Input<String> role;
  /// Giving ability to grant membership to others or not for `role`. (Default: false)
  final pulumi.Input<bool>? withAdminOption;

  /// Creates a new [GrantRoleArgs].
  /// [grantRole] The name of the role that is added to `role`.
  /// [role] The name of the role that is granted a new membership.
  /// [withAdminOption] Giving ability to grant membership to others or not for `role`. (Default: false)
  GrantRoleArgs({
    required this.grantRole,
    required this.role,
    this.withAdminOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grantRole': grantRole,
      'role': role,
      'withAdminOption': ?withAdminOption,
    };
  }

  factory GrantRoleArgs.fromMap(Map<String, dynamic> map) {
    return GrantRoleArgs(
      grantRole: (map['grantRole'] as String).input(),
      role: (map['role'] as String).input(),
      withAdminOption: map['withAdminOption'] == null ? null : (map['withAdminOption']! as bool).input(),
    );
  }
}

