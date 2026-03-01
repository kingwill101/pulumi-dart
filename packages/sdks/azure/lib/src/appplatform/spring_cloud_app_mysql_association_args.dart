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
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> mysqlServerId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> password,
    required pulumi.Output<String> springCloudAppId,
    required pulumi.Output<String> username,
  }) :
      databaseName = pulumi.Input.asInput<String>(databaseName),
      mysqlServerId = pulumi.Input.asInput<String>(mysqlServerId),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asInput<String>(password),
      springCloudAppId = pulumi.Input.asInput<String>(springCloudAppId),
      username = pulumi.Input.asInput<String>(username);

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
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      mysqlServerId: pulumi.Output.create<String>(map['mysqlServerId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: pulumi.Output.create<String>(map['password'] as String),
      springCloudAppId: pulumi.Output.create<String>(map['springCloudAppId'] as String),
      username: pulumi.Output.create<String>(map['username'] as String),
    );
  }
}

