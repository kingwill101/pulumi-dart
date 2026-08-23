// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SqlRoleAssignment resources.
class SqlRoleAssignmentState {
  /// The name of the Cosmos DB Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accountName;
  /// The GUID as the name of the Cosmos DB SQL Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Principal (Client) in Azure Active Directory. Changing this forces a new resource to be created.
  final pulumi.Input<String>? principalId;
  /// The name of the Resource Group in which the Cosmos DB SQL Role Assignment is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The resource ID of the Cosmos DB SQL Role Definition.
  final pulumi.Input<String>? roleDefinitionId;
  /// The data plane resource path for which access is being granted through this Cosmos DB SQL Role Assignment. Changing this forces a new resource to be created.
  final pulumi.Input<String>? scope;

  /// Creates a new [SqlRoleAssignmentState].
  /// [accountName] The name of the Cosmos DB Account. Changing this forces a new resource to be created.
  /// [name] The GUID as the name of the Cosmos DB SQL Role Assignment - one will be generated if not specified. Changing this forces a new resource to be created.
  /// [principalId] The ID of the Principal (Client) in Azure Active Directory. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the Cosmos DB SQL Role Assignment is created. Changing this forces a new resource to be created.
  /// [roleDefinitionId] The resource ID of the Cosmos DB SQL Role Definition.
  /// [scope] The data plane resource path for which access is being granted through this Cosmos DB SQL Role Assignment. Changing this forces a new resource to be created.
  const SqlRoleAssignmentState({
    this.accountName,
    this.name,
    this.principalId,
    this.resourceGroupName,
    this.roleDefinitionId,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'name': ?name,
      'principalId': ?principalId,
      'resourceGroupName': ?resourceGroupName,
      'roleDefinitionId': ?roleDefinitionId,
      'scope': ?scope,
    };
  }

  factory SqlRoleAssignmentState.fromMap(Map<String, dynamic> map) {
    return SqlRoleAssignmentState(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleDefinitionId: (() { final guardedValue = map['roleDefinitionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
