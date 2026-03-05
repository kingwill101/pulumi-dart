// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_role_definition_privilege.dart';

/// {@template pulumi_cosmosdb_mongo_role_definition_mongo_role_definition_args_doc}
/// The set of arguments for MongoRoleDefinition.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_mongo_role_definition_mongo_role_definition_args_doc}
class MongoRoleDefinitionArgs {
  /// The resource ID of the Mongo DB. Changing this forces a new resource to be created.
  final pulumi.Input<String> cosmosMongoDatabaseId;
  /// A list of Mongo Roles which are inherited to the Mongo Role Definition.
  ///
  /// &gt; **Note:** The role that needs to be inherited should exist in the Mongo DB of `cosmos_mongo_database_id`.
  final pulumi.Input<List<String>>? inheritedRoleNames;
  /// A `privilege` block as defined below.
  final pulumi.Input<List<MongoRoleDefinitionPrivilege>>? privileges;
  /// The user-friendly name for the Mongo Role Definition. It must be unique for the database account. Changing this forces a new resource to be created.
  final pulumi.Input<String> roleName;

  /// Creates a new [MongoRoleDefinitionArgs].
  /// [cosmosMongoDatabaseId] The resource ID of the Mongo DB. Changing this forces a new resource to be created.
  /// [inheritedRoleNames] A list of Mongo Roles which are inherited to the Mongo Role Definition.
  /// [privileges] A `privilege` block as defined below.
  /// [roleName] The user-friendly name for the Mongo Role Definition. It must be unique for the database account. Changing this forces a new resource to be created.
  MongoRoleDefinitionArgs({
    required this.cosmosMongoDatabaseId,
    this.inheritedRoleNames,
    this.privileges,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosMongoDatabaseId': cosmosMongoDatabaseId,
      'inheritedRoleNames': ?inheritedRoleNames,
      'privileges': ?pulumi.Input.mapOptionalInputValue<List<MongoRoleDefinitionPrivilege>, List<Map<String, dynamic>>>(privileges, (value) => pulumi.Input.encodeList<MongoRoleDefinitionPrivilege, Map<String, dynamic>>(value, (value) => value.toMap())),
      'roleName': roleName,
    };
  }

  factory MongoRoleDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return MongoRoleDefinitionArgs(
      cosmosMongoDatabaseId: pulumi.Input.fromValue(map['cosmosMongoDatabaseId'] as String),
      inheritedRoleNames: (() { final guardedValue = map['inheritedRoleNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privileges: (() { final guardedValue = map['privileges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MongoRoleDefinitionPrivilege>(guardedValue, (value) => MongoRoleDefinitionPrivilege.fromMap((value as Map).cast<String, dynamic>()))); })(),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
    );
  }
}

