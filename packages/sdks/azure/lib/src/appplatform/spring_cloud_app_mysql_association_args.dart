// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_app_mysql_association_spring_cloud_app_mysql_association_args_doc}
/// The set of arguments for SpringCloudAppMysqlAssociation.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_app_mysql_association_spring_cloud_app_mysql_association_args_doc}
class SpringCloudAppMysqlAssociationArgs {
  /// Specifies the name of the MySQL Database which the Spring Cloud App should be associated with.
  final pulumi.Input<String> databaseName;

  /// Specifies the ID of the MySQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> mysqlServerId;

  /// Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Specifies the password which should be used when connecting to the MySQL Database from the Spring Cloud App.
  final pulumi.Input<String> password;

  /// Specifies the ID of the Spring Cloud Application where this Association is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> springCloudAppId;

  /// Specifies the username which should be used when connecting to the MySQL Database from the Spring Cloud App.
  final pulumi.Input<String> username;

  /// Creates a new [SpringCloudAppMysqlAssociationArgs].
  /// [databaseName] Specifies the name of the MySQL Database which the Spring Cloud App should be associated with.
  /// [mysqlServerId] Specifies the ID of the MySQL Server. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  /// [password] Specifies the password which should be used when connecting to the MySQL Database from the Spring Cloud App.
  /// [springCloudAppId] Specifies the ID of the Spring Cloud Application where this Association is created. Changing this forces a new resource to be created.
  /// [username] Specifies the username which should be used when connecting to the MySQL Database from the Spring Cloud App.
  SpringCloudAppMysqlAssociationArgs({
    required this.databaseName,
    required this.mysqlServerId,
    this.name,
    required this.password,
    required this.springCloudAppId,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': databaseName,
      'mysqlServerId': mysqlServerId,
      'name': ?name,
      'password': password,
      'springCloudAppId': springCloudAppId,
      'username': username,
    };
  }

  factory SpringCloudAppMysqlAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudAppMysqlAssociationArgs(
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      mysqlServerId: pulumi.Input.fromValue(map['mysqlServerId'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: pulumi.Input.fromValue(map['password'] as String),
      springCloudAppId: pulumi.Input.fromValue(
        map['springCloudAppId'] as String,
      ),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
