// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MongoRoleDefinitionPrivilegeResource {
  /// The name of the Mongo DB Collection that the Role Definition is applied.
  final pulumi.Input<String>? collectionName;
  /// The name of the Mongo DB that the Role Definition is applied.
  final pulumi.Input<String>? dbName;

  /// Creates a new [MongoRoleDefinitionPrivilegeResource].
  /// [collectionName] The name of the Mongo DB Collection that the Role Definition is applied.
  /// [dbName] The name of the Mongo DB that the Role Definition is applied.
  MongoRoleDefinitionPrivilegeResource({
    this.collectionName,
    this.dbName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionName': ?collectionName,
      'dbName': ?dbName,
    };
  }

  factory MongoRoleDefinitionPrivilegeResource.fromMap(Map<String, dynamic> map) {
    return MongoRoleDefinitionPrivilegeResource(
      collectionName: map['collectionName'] == null ? null : (map['collectionName']! as String).input(),
      dbName: map['dbName'] == null ? null : (map['dbName']! as String).input(),
    );
  }
}

