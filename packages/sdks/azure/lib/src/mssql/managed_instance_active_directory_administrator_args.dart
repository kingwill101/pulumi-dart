// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_managed_instance_active_directory_administrator_managed_instance_active_directory_administrator_args_doc}
/// The set of arguments for ManagedInstanceActiveDirectoryAdministrator.
/// {@endtemplate}
/// {@macro pulumi_mssql_managed_instance_active_directory_administrator_managed_instance_active_directory_administrator_args_doc}
class ManagedInstanceActiveDirectoryAdministratorArgs {
  /// When `true`, only permit logins from AAD users and administrators. When `false`, also allow local database users.
  final pulumi.Input<bool>? azureadAuthenticationOnly;

  /// The login name of the principal to set as the Managed Instance Administrator.
  final pulumi.Input<String> loginUsername;

  /// The ID of the Azure SQL Managed Instance for which to set the administrator. Changing this forces a new resource to be created.
  final pulumi.Input<String> managedInstanceId;

  /// The Object ID of the principal to set as the Managed Instance Administrator.
  final pulumi.Input<String> objectId;

  /// The Azure Active Directory Tenant ID.
  final pulumi.Input<String> tenantId;

  /// Creates a new [ManagedInstanceActiveDirectoryAdministratorArgs].
  /// [azureadAuthenticationOnly] When `true`, only permit logins from AAD users and administrators. When `false`, also allow local database users.
  /// [loginUsername] The login name of the principal to set as the Managed Instance Administrator.
  /// [managedInstanceId] The ID of the Azure SQL Managed Instance for which to set the administrator. Changing this forces a new resource to be created.
  /// [objectId] The Object ID of the principal to set as the Managed Instance Administrator.
  /// [tenantId] The Azure Active Directory Tenant ID.
  ManagedInstanceActiveDirectoryAdministratorArgs({
    this.azureadAuthenticationOnly,
    required this.loginUsername,
    required this.managedInstanceId,
    required this.objectId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureadAuthenticationOnly': ?azureadAuthenticationOnly,
      'loginUsername': loginUsername,
      'managedInstanceId': managedInstanceId,
      'objectId': objectId,
      'tenantId': tenantId,
    };
  }

  factory ManagedInstanceActiveDirectoryAdministratorArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedInstanceActiveDirectoryAdministratorArgs(
      azureadAuthenticationOnly: (() {
        final guardedValue = map['azureadAuthenticationOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      loginUsername: pulumi.Input.fromValue(map['loginUsername'] as String),
      managedInstanceId: pulumi.Input.fromValue(
        map['managedInstanceId'] as String,
      ),
      objectId: pulumi.Input.fromValue(map['objectId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
