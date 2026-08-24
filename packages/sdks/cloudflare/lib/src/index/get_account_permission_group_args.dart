// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_account_permission_group_get_account_permission_group_args_doc}
/// Arguments for getAccountPermissionGroup.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_permission_group_get_account_permission_group_args_doc}
class GetAccountPermissionGroupArgs {
  /// Account identifier tag.
  final pulumi.Input<String> accountId;
  /// Permission Group identifier tag.
  final pulumi.Input<String> permissionGroupId;

  /// Creates a new [GetAccountPermissionGroupArgs].
  /// [accountId] Account identifier tag.
  /// [permissionGroupId] Permission Group identifier tag.
  const GetAccountPermissionGroupArgs({
    required this.accountId,
    required this.permissionGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'permissionGroupId': permissionGroupId,
    };
  }

  factory GetAccountPermissionGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountPermissionGroupArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      permissionGroupId: pulumi.Input.fromValue(map['permissionGroupId'] as String),
    );
  }
}
