// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MongoRoleDefinitionPrivilegeResource {
  /// The name of the Mongo DB Collection that the Role Definition is applied.
  final pulumi.Input<String?>? collectionName;
  /// The name of the Mongo DB that the Role Definition is applied.
  final pulumi.Input<String?>? dbName;

  /// Creates a new [MongoRoleDefinitionPrivilegeResource].
  /// [collectionName] The name of the Mongo DB Collection that the Role Definition is applied.
  /// [dbName] The name of the Mongo DB that the Role Definition is applied.
  const MongoRoleDefinitionPrivilegeResource({
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
      collectionName: (() { final guardedValue = map['collectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
