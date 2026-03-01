// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_role_definition_privilege.dart';

/// Input properties used for looking up and filtering MongoRoleDefinition resources.
class MongoRoleDefinitionState {
  /// The resource ID of the Mongo DB. Changing this forces a new resource to be created.
  final pulumi.Input<String>? cosmosMongoDatabaseId;
  /// A list of Mongo Roles which are inherited to the Mongo Role Definition.
  ///
  /// > **Note:** The role that needs to be inherited should exist in the Mongo DB of `cosmos_mongo_database_id`.
  final pulumi.Input<List<String>>? inheritedRoleNames;
  /// A `privilege` block as defined below.
  final pulumi.Input<List<MongoRoleDefinitionPrivilege>>? privileges;
  /// The user-friendly name for the Mongo Role Definition. It must be unique for the database account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? roleName;

  /// Creates a new [MongoRoleDefinitionState].
  /// [cosmosMongoDatabaseId] The resource ID of the Mongo DB. Changing this forces a new resource to be created.
  /// [inheritedRoleNames] A list of Mongo Roles which are inherited to the Mongo Role Definition.
  /// [privileges] A `privilege` block as defined below.
  /// [roleName] The user-friendly name for the Mongo Role Definition. It must be unique for the database account. Changing this forces a new resource to be created.
  MongoRoleDefinitionState({
    pulumi.Output<String>? cosmosMongoDatabaseId,
    pulumi.Output<List<String>>? inheritedRoleNames,
    pulumi.Output<List<MongoRoleDefinitionPrivilege>>? privileges,
    pulumi.Output<String>? roleName,
  }) :
      cosmosMongoDatabaseId = pulumi.Input.asOptionalInput<String>(cosmosMongoDatabaseId),
      inheritedRoleNames = pulumi.Input.asOptionalInput<List<String>>(inheritedRoleNames),
      privileges = pulumi.Input.asOptionalInput<List<MongoRoleDefinitionPrivilege>>(privileges),
      roleName = pulumi.Input.asOptionalInput<String>(roleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosMongoDatabaseId': ?cosmosMongoDatabaseId,
      'inheritedRoleNames': ?inheritedRoleNames,
      'privileges': ?pulumi.Input.mapOptionalInputValue<List<MongoRoleDefinitionPrivilege>, List<Map<String, dynamic>>>(privileges, (value) => pulumi.Input.encodeList<MongoRoleDefinitionPrivilege, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleName': ?roleName,
    };
  }

  factory MongoRoleDefinitionState.fromMap(Map<String, dynamic> map) {
    return MongoRoleDefinitionState(
      cosmosMongoDatabaseId: map['cosmosMongoDatabaseId'] == null ? null : pulumi.Output.create<String>(map['cosmosMongoDatabaseId'] as String),
      inheritedRoleNames: map['inheritedRoleNames'] == null ? null : pulumi.Output.create<List<String>>((map['inheritedRoleNames'] as List).cast<String>()),
      privileges: map['privileges'] == null ? null : pulumi.Output.create<List<MongoRoleDefinitionPrivilege>>(pulumi.Input.decodeList<MongoRoleDefinitionPrivilege>(map['privileges'], (value) => MongoRoleDefinitionPrivilege.fromMap((value as Map).cast<String, dynamic>()))),
      roleName: map['roleName'] == null ? null : pulumi.Output.create<String>(map['roleName'] as String),
    );
  }
}

