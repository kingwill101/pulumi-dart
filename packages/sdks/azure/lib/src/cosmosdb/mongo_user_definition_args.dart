// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_mongo_user_definition_mongo_user_definition_args_doc}
/// The set of arguments for MongoUserDefinition.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_mongo_user_definition_mongo_user_definition_args_doc}
class MongoUserDefinitionArgs {
  /// The resource ID of the Mongo DB. Changing this forces a new resource to be created.
  final pulumi.Input<String> cosmosMongoDatabaseId;
  /// A list of Mongo Roles that are inherited to the Mongo User Definition.
  ///
  /// &gt; **Note:** The role that needs to be inherited should exist in the Mongo DB of `cosmos_mongo_database_id`.
  final pulumi.Input<List<String>>? inheritedRoleNames;
  /// The password for the Mongo User Definition.
  final pulumi.Input<String> password;
  /// The username for the Mongo User Definition. Changing this forces a new resource to be created.
  final pulumi.Input<String> username;

  /// Creates a new [MongoUserDefinitionArgs].
  /// [cosmosMongoDatabaseId] The resource ID of the Mongo DB. Changing this forces a new resource to be created.
  /// [inheritedRoleNames] A list of Mongo Roles that are inherited to the Mongo User Definition.
  /// [password] The password for the Mongo User Definition.
  /// [username] The username for the Mongo User Definition. Changing this forces a new resource to be created.
  MongoUserDefinitionArgs({
    required this.cosmosMongoDatabaseId,
    this.inheritedRoleNames,
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosMongoDatabaseId': cosmosMongoDatabaseId,
      'inheritedRoleNames': ?inheritedRoleNames,
      'password': password,
      'username': username,
    };
  }

  factory MongoUserDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return MongoUserDefinitionArgs(
      cosmosMongoDatabaseId: pulumi.Input.fromValue(map['cosmosMongoDatabaseId'] as String),
      inheritedRoleNames: (() { final guardedValue = map['inheritedRoleNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}

