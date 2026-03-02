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
    this.cosmosMongoDatabaseId,
    this.inheritedRoleNames,
    this.privileges,
    this.roleName,
  });

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
      cosmosMongoDatabaseId: map['cosmosMongoDatabaseId'] == null ? null : (map['cosmosMongoDatabaseId'] as String).input(),
      inheritedRoleNames: map['inheritedRoleNames'] == null ? null : ((map['inheritedRoleNames'] as List).cast<String>()).input(),
      privileges: map['privileges'] == null ? null : (pulumi.Input.decodeList<MongoRoleDefinitionPrivilege>(map['privileges'], (value) => MongoRoleDefinitionPrivilege.fromMap((value as Map).cast<String, dynamic>()))).input(),
      roleName: map['roleName'] == null ? null : (map['roleName'] as String).input(),
    );
  }
}

