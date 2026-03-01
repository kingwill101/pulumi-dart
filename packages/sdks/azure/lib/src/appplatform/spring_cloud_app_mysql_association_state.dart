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
    pulumi.Output<String>? databaseName,
    pulumi.Output<String>? mysqlServerId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? springCloudAppId,
    pulumi.Output<String>? username,
  }) :
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      mysqlServerId = pulumi.Input.asOptionalInput<String>(mysqlServerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      springCloudAppId = pulumi.Input.asOptionalInput<String>(springCloudAppId),
      username = pulumi.Input.asOptionalInput<String>(username);

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
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      mysqlServerId: map['mysqlServerId'] == null ? null : pulumi.Output.create<String>(map['mysqlServerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      springCloudAppId: map['springCloudAppId'] == null ? null : pulumi.Output.create<String>(map['springCloudAppId'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

