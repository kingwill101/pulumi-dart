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
  /// > **Note:** The role that needs to be inherited should exist in the Mongo DB of `cosmos_mongo_database_id`.
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
    required pulumi.Output<String> cosmosMongoDatabaseId,
    pulumi.Output<List<String>>? inheritedRoleNames,
    required pulumi.Output<String> password,
    required pulumi.Output<String> username,
  }) :
      cosmosMongoDatabaseId = pulumi.Input.asInput<String>(cosmosMongoDatabaseId),
      inheritedRoleNames = pulumi.Input.asOptionalInput<List<String>>(inheritedRoleNames),
      password = pulumi.Input.asInput<String>(password),
      username = pulumi.Input.asInput<String>(username);

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
      cosmosMongoDatabaseId: pulumi.Output.create<String>(map['cosmosMongoDatabaseId'] as String),
      inheritedRoleNames: map['inheritedRoleNames'] == null ? null : pulumi.Output.create<List<String>>((map['inheritedRoleNames'] as List).cast<String>()),
      password: pulumi.Output.create<String>(map['password'] as String),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

