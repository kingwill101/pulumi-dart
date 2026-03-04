// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mysql_flexible_database_flexible_database_args_doc}
/// The set of arguments for FlexibleDatabase.
/// {@endtemplate}
/// {@macro pulumi_mysql_flexible_database_flexible_database_args_doc}
class FlexibleDatabaseArgs {
  /// Specifies the Charset for the MySQL Database, which needs [to be a valid MySQL Charset](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html). Changing this forces a new resource to be created.
  final pulumi.Input<String> charset;

  /// Specifies the Collation for the MySQL Database, which needs [to be a valid MySQL Collation](https://dev.mysql.com/doc/refman/5.7/en/charset-mysql.html). Changing this forces a new resource to be created.
  final pulumi.Input<String> collation;

  /// Specifies the name of the MySQL Database, which needs [to be a valid MySQL identifier](https://dev.mysql.com/doc/refman/5.7/en/identifiers.html). Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverName;

  /// Creates a new [FlexibleDatabaseArgs].
  /// [charset] Specifies the Charset for the MySQL Database, which needs [to be a valid MySQL Charset](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html). Changing this forces a new resource to be created.
  /// [collation] Specifies the Collation for the MySQL Database, which needs [to be a valid MySQL Collation](https://dev.mysql.com/doc/refman/5.7/en/charset-mysql.html). Changing this forces a new resource to be created.
  /// [name] Specifies the name of the MySQL Database, which needs [to be a valid MySQL identifier](https://dev.mysql.com/doc/refman/5.7/en/identifiers.html). Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created.
  /// [serverName] Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
  FlexibleDatabaseArgs({
    required this.charset,
    required this.collation,
    this.name,
    required this.resourceGroupName,
    required this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charset': charset,
      'collation': collation,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory FlexibleDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return FlexibleDatabaseArgs(
      charset: pulumi.Input.fromValue(map['charset'] as String),
      collation: pulumi.Input.fromValue(map['collation'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
