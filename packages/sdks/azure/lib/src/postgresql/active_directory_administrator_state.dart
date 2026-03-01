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
    pulumi.Output<String>? login,
    pulumi.Output<String>? objectId,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? serverName,
    pulumi.Output<String>? tenantId,
  }) :
      login = pulumi.Input.asOptionalInput<String>(login),
      objectId = pulumi.Input.asOptionalInput<String>(objectId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

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
      login: map['login'] == null ? null : pulumi.Output.create<String>(map['login'] as String),
      objectId: map['objectId'] == null ? null : pulumi.Output.create<String>(map['objectId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

