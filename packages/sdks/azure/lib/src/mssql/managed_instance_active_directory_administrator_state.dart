// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ManagedInstanceActiveDirectoryAdministrator resources.
class ManagedInstanceActiveDirectoryAdministratorState {
  /// When `true`, only permit logins from AAD users and administrators. When `false`, also allow local database users.
  final pulumi.Input<bool>? azureadAuthenticationOnly;

  /// The login name of the principal to set as the Managed Instance Administrator.
  final pulumi.Input<String>? loginUsername;

  /// The ID of the Azure SQL Managed Instance for which to set the administrator. Changing this forces a new resource to be created.
  final pulumi.Input<String>? managedInstanceId;

  /// The Object ID of the principal to set as the Managed Instance Administrator.
  final pulumi.Input<String>? objectId;

  /// The Azure Active Directory Tenant ID.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ManagedInstanceActiveDirectoryAdministratorState].
  /// [azureadAuthenticationOnly] When `true`, only permit logins from AAD users and administrators. When `false`, also allow local database users.
  /// [loginUsername] The login name of the principal to set as the Managed Instance Administrator.
  /// [managedInstanceId] The ID of the Azure SQL Managed Instance for which to set the administrator. Changing this forces a new resource to be created.
  /// [objectId] The Object ID of the principal to set as the Managed Instance Administrator.
  /// [tenantId] The Azure Active Directory Tenant ID.
  ManagedInstanceActiveDirectoryAdministratorState({
    this.azureadAuthenticationOnly,
    this.loginUsername,
    this.managedInstanceId,
    this.objectId,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureadAuthenticationOnly': ?azureadAuthenticationOnly,
      'loginUsername': ?loginUsername,
      'managedInstanceId': ?managedInstanceId,
      'objectId': ?objectId,
      'tenantId': ?tenantId,
    };
  }

  factory ManagedInstanceActiveDirectoryAdministratorState.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedInstanceActiveDirectoryAdministratorState(
      azureadAuthenticationOnly: (() {
        final guardedValue = map['azureadAuthenticationOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      loginUsername: (() {
        final guardedValue = map['loginUsername'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managedInstanceId: (() {
        final guardedValue = map['managedInstanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      objectId: (() {
        final guardedValue = map['objectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
