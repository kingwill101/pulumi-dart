// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_role_definition_permission.dart';

/// Input properties used for looking up and filtering SqlRoleDefinition resources.
class SqlRoleDefinitionState {
  /// The name of the Cosmos DB Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? accountName;
  /// A list of fully qualified scopes at or below which Role Assignments may be created using this Cosmos DB SQL Role Definition. It will allow application of this Cosmos DB SQL Role Definition on the entire Database Account or any underlying Database/Collection. Scopes higher than Database Account are not enforceable as assignable scopes.
  ///
  /// > **Note:** The resources referenced in assignable scopes need not exist.
  final pulumi.Input<List<String>>? assignableScopes;
  /// An user-friendly name for the Cosmos DB SQL Role Definition which must be unique for the Database Account.
  final pulumi.Input<String>? name;
  /// A `permissions` block as defined below.
  final pulumi.Input<List<SqlRoleDefinitionPermission>>? permissions;
  /// The name of the Resource Group in which the Cosmos DB SQL Role Definition is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The GUID as the name of the Cosmos DB SQL Role Definition - one will be generated if not specified. Changing this forces a new resource to be created.
  final pulumi.Input<String>? roleDefinitionId;
  /// The type of the Cosmos DB SQL Role Definition. Possible values are `BuiltInRole` and `CustomRole`. Defaults to `CustomRole`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;

  /// Creates a new [SqlRoleDefinitionState].
  /// [accountName] The name of the Cosmos DB Account. Changing this forces a new resource to be created.
  /// [assignableScopes] A list of fully qualified scopes at or below which Role Assignments may be created using this Cosmos DB SQL Role Definition. It will allow application of this Cosmos DB SQL Role Definition on the entire Database Account or any underlying Database/Collection. Scopes higher than Database Account are not enforceable as assignable scopes.
  /// [name] An user-friendly name for the Cosmos DB SQL Role Definition which must be unique for the Database Account.
  /// [permissions] A `permissions` block as defined below.
  /// [resourceGroupName] The name of the Resource Group in which the Cosmos DB SQL Role Definition is created. Changing this forces a new resource to be created.
  /// [roleDefinitionId] The GUID as the name of the Cosmos DB SQL Role Definition - one will be generated if not specified. Changing this forces a new resource to be created.
  /// [type] The type of the Cosmos DB SQL Role Definition. Possible values are `BuiltInRole` and `CustomRole`. Defaults to `CustomRole`. Changing this forces a new resource to be created.
  SqlRoleDefinitionState({
    pulumi.Output<String>? accountName,
    pulumi.Output<List<String>>? assignableScopes,
    pulumi.Output<String>? name,
    pulumi.Output<List<SqlRoleDefinitionPermission>>? permissions,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? roleDefinitionId,
    pulumi.Output<String>? type,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      assignableScopes = pulumi.Input.asOptionalInput<List<String>>(assignableScopes),
      name = pulumi.Input.asOptionalInput<String>(name),
      permissions = pulumi.Input.asOptionalInput<List<SqlRoleDefinitionPermission>>(permissions),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      roleDefinitionId = pulumi.Input.asOptionalInput<String>(roleDefinitionId),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'assignableScopes': ?assignableScopes,
      'name': ?name,
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<SqlRoleDefinitionPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<SqlRoleDefinitionPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
      'roleDefinitionId': ?roleDefinitionId,
      'type': ?type,
    };
  }

  factory SqlRoleDefinitionState.fromMap(Map<String, dynamic> map) {
    return SqlRoleDefinitionState(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      assignableScopes: map['assignableScopes'] == null ? null : pulumi.Output.create<List<String>>((map['assignableScopes'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<SqlRoleDefinitionPermission>>(pulumi.Input.decodeList<SqlRoleDefinitionPermission>(map['permissions'], (value) => SqlRoleDefinitionPermission.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      roleDefinitionId: map['roleDefinitionId'] == null ? null : pulumi.Output.create<String>(map['roleDefinitionId'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

