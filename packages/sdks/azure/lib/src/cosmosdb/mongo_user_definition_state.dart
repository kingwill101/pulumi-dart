// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MongoUserDefinition resources.
class MongoUserDefinitionState {
  /// The resource ID of the Mongo DB. Changing this forces a new resource to be created.
  final pulumi.Input<String>? cosmosMongoDatabaseId;
  /// A list of Mongo Roles that are inherited to the Mongo User Definition.
  ///
  /// > **Note:** The role that needs to be inherited should exist in the Mongo DB of `cosmos_mongo_database_id`.
  final pulumi.Input<List<String>>? inheritedRoleNames;
  /// The password for the Mongo User Definition.
  final pulumi.Input<String>? password;
  /// The username for the Mongo User Definition. Changing this forces a new resource to be created.
  final pulumi.Input<String>? username;

  /// Creates a new [MongoUserDefinitionState].
  /// [cosmosMongoDatabaseId] The resource ID of the Mongo DB. Changing this forces a new resource to be created.
  /// [inheritedRoleNames] A list of Mongo Roles that are inherited to the Mongo User Definition.
  /// [password] The password for the Mongo User Definition.
  /// [username] The username for the Mongo User Definition. Changing this forces a new resource to be created.
  MongoUserDefinitionState({
    pulumi.Output<String>? cosmosMongoDatabaseId,
    pulumi.Output<List<String>>? inheritedRoleNames,
    pulumi.Output<String>? password,
    pulumi.Output<String>? username,
  }) :
      cosmosMongoDatabaseId = pulumi.Input.asOptionalInput<String>(cosmosMongoDatabaseId),
      inheritedRoleNames = pulumi.Input.asOptionalInput<List<String>>(inheritedRoleNames),
      password = pulumi.Input.asOptionalInput<String>(password),
      username = pulumi.Input.asOptionalInput<String>(username);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cosmosMongoDatabaseId': ?cosmosMongoDatabaseId,
      'inheritedRoleNames': ?inheritedRoleNames,
      'password': ?password,
      'username': ?username,
    };
  }

  factory MongoUserDefinitionState.fromMap(Map<String, dynamic> map) {
    return MongoUserDefinitionState(
      cosmosMongoDatabaseId: map['cosmosMongoDatabaseId'] == null ? null : pulumi.Output.create<String>(map['cosmosMongoDatabaseId'] as String),
      inheritedRoleNames: map['inheritedRoleNames'] == null ? null : pulumi.Output.create<List<String>>((map['inheritedRoleNames'] as List).cast<String>()),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

