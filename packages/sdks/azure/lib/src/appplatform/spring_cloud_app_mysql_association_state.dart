// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SpringCloudAppMysqlAssociation resources.
class SpringCloudAppMysqlAssociationState {
  /// Specifies the name of the MySQL Database which the Spring Cloud App should be associated with.
  final pulumi.Input<String>? databaseName;
  /// Specifies the ID of the MySQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? mysqlServerId;
  /// Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the password which should be used when connecting to the MySQL Database from the Spring Cloud App.
  final pulumi.Input<String>? password;
  /// Specifies the ID of the Spring Cloud Application where this Association is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? springCloudAppId;
  /// Specifies the username which should be used when connecting to the MySQL Database from the Spring Cloud App.
  final pulumi.Input<String>? username;

  /// Creates a new [SpringCloudAppMysqlAssociationState].
  /// [databaseName] Specifies the name of the MySQL Database which the Spring Cloud App should be associated with.
  /// [mysqlServerId] Specifies the ID of the MySQL Server. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  /// [password] Specifies the password which should be used when connecting to the MySQL Database from the Spring Cloud App.
  /// [springCloudAppId] Specifies the ID of the Spring Cloud Application where this Association is created. Changing this forces a new resource to be created.
  /// [username] Specifies the username which should be used when connecting to the MySQL Database from the Spring Cloud App.
  SpringCloudAppMysqlAssociationState({
    this.databaseName,
    this.mysqlServerId,
    this.name,
    this.password,
    this.springCloudAppId,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'mysqlServerId': ?mysqlServerId,
      'name': ?name,
      'password': ?password,
      'springCloudAppId': ?springCloudAppId,
      'username': ?username,
    };
  }

  factory SpringCloudAppMysqlAssociationState.fromMap(Map<String, dynamic> map) {
    return SpringCloudAppMysqlAssociationState(
      databaseName: map['databaseName'] == null ? null : (map['databaseName'] as String).input(),
      mysqlServerId: map['mysqlServerId'] == null ? null : (map['mysqlServerId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      springCloudAppId: map['springCloudAppId'] == null ? null : (map['springCloudAppId'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

