// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ActiveDirectoryAdministrator resources.
class ActiveDirectoryAdministratorState {
  /// The login name of the principal to set as the server administrator
  final pulumi.Input<String>? login;
  /// The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity.
  final pulumi.Input<String>? objectId;
  /// The name of the resource group for the PostgreSQL server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The name of the PostgreSQL Server on which to set the administrator. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverName;
  /// The Azure Tenant ID
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ActiveDirectoryAdministratorState].
  /// [login] The login name of the principal to set as the server administrator
  /// [objectId] The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity.
  /// [resourceGroupName] The name of the resource group for the PostgreSQL server. Changing this forces a new resource to be created.
  /// [serverName] The name of the PostgreSQL Server on which to set the administrator. Changing this forces a new resource to be created.
  /// [tenantId] The Azure Tenant ID
  ActiveDirectoryAdministratorState({
    this.login,
    this.objectId,
    this.resourceGroupName,
    this.serverName,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'login': ?login,
      'objectId': ?objectId,
      'resourceGroupName': ?resourceGroupName,
      'serverName': ?serverName,
      'tenantId': ?tenantId,
    };
  }

  factory ActiveDirectoryAdministratorState.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryAdministratorState(
      login: (() { final guardedValue = map['login']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

