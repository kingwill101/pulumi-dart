// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_role_definition_privilege.dart';

/// Input properties used for looking up and filtering MongoRoleDefinition resources.
class MongoRoleDefinitionState {
  /// The resource ID of the Mongo DB. Changing this forces a new resource to be created.
  final pulumi.Input<String>? cosmosMongoDatabaseId;
  /// A list of Mongo Roles which are inherited to the Mongo Role Definition.
  ///
  /// &gt; **Note:** The role that needs to be inherited should exist in the Mongo DB of `cosmos_mongo_database_id`.
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
  const MongoRoleDefinitionState({
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
      cosmosMongoDatabaseId: (() { final guardedValue = map['cosmosMongoDatabaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inheritedRoleNames: (() { final guardedValue = map['inheritedRoleNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privileges: (() { final guardedValue = map['privileges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MongoRoleDefinitionPrivilege>(guardedValue, (value) => MongoRoleDefinitionPrivilege.fromMap((value as Map).cast<String, dynamic>()))); })(),
      roleName: (() { final guardedValue = map['roleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

