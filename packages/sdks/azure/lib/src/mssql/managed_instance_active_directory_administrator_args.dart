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
    pulumi.Output<bool>? azureadAuthenticationOnly,
    required pulumi.Output<String> loginUsername,
    required pulumi.Output<String> managedInstanceId,
    required pulumi.Output<String> objectId,
    required pulumi.Output<String> tenantId,
  }) :
      azureadAuthenticationOnly = pulumi.Input.asOptionalInput<bool>(azureadAuthenticationOnly),
      loginUsername = pulumi.Input.asInput<String>(loginUsername),
      managedInstanceId = pulumi.Input.asInput<String>(managedInstanceId),
      objectId = pulumi.Input.asInput<String>(objectId),
      tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureadAuthenticationOnly': ?azureadAuthenticationOnly,
      'loginUsername': loginUsername,
      'managedInstanceId': managedInstanceId,
      'objectId': objectId,
      'tenantId': tenantId,
    };
  }

  factory ManagedInstanceActiveDirectoryAdministratorArgs.fromMap(Map<String, dynamic> map) {
    return ManagedInstanceActiveDirectoryAdministratorArgs(
      azureadAuthenticationOnly: map['azureadAuthenticationOnly'] == null ? null : pulumi.Output.create<bool>(map['azureadAuthenticationOnly'] as bool),
      loginUsername: pulumi.Output.create<String>(map['loginUsername'] as String),
      managedInstanceId: pulumi.Output.create<String>(map['managedInstanceId'] as String),
      objectId: pulumi.Output.create<String>(map['objectId'] as String),
      tenantId: pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

