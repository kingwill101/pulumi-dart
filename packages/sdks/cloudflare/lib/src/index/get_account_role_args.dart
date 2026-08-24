// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_account_role_get_account_role_args_doc}
/// Arguments for getAccountRole.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_role_get_account_role_args_doc}
class GetAccountRoleArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  /// Role identifier tag.
  final pulumi.Input<String> roleId;

  /// Creates a new [GetAccountRoleArgs].
  /// [accountId] Account identifier tag.
  /// [roleId] Role identifier tag.
  const GetAccountRoleArgs({
    required this.accountId,
    required this.roleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'roleId': roleId,
    };
  }

  factory GetAccountRoleArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountRoleArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      roleId: pulumi.Input.fromValue(map['roleId'] as String),
    );
  }
}
