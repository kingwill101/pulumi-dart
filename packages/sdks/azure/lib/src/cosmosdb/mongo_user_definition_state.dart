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
    this.cosmosMongoDatabaseId,
    this.inheritedRoleNames,
    this.password,
    this.username,
  });

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
      cosmosMongoDatabaseId: map['cosmosMongoDatabaseId'] == null ? null : (map['cosmosMongoDatabaseId']! as String).input(),
      inheritedRoleNames: map['inheritedRoleNames'] == null ? null : ((map['inheritedRoleNames']! as List).cast<String>()).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

