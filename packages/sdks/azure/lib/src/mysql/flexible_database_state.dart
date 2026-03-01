// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlexibleDatabase resources.
class FlexibleDatabaseState {
  /// Specifies the Charset for the MySQL Database, which needs [to be a valid MySQL Charset](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html). Changing this forces a new resource to be created.
  final pulumi.Input<String>? charset;
  /// Specifies the Collation for the MySQL Database, which needs [to be a valid MySQL Collation](https://dev.mysql.com/doc/refman/5.7/en/charset-mysql.html). Changing this forces a new resource to be created.
  final pulumi.Input<String>? collation;
  /// Specifies the name of the MySQL Database, which needs [to be a valid MySQL identifier](https://dev.mysql.com/doc/refman/5.7/en/identifiers.html). Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverName;

  /// Creates a new [FlexibleDatabaseState].
  /// [charset] Specifies the Charset for the MySQL Database, which needs [to be a valid MySQL Charset](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html). Changing this forces a new resource to be created.
  /// [collation] Specifies the Collation for the MySQL Database, which needs [to be a valid MySQL Collation](https://dev.mysql.com/doc/refman/5.7/en/charset-mysql.html). Changing this forces a new resource to be created.
  /// [name] Specifies the name of the MySQL Database, which needs [to be a valid MySQL identifier](https://dev.mysql.com/doc/refman/5.7/en/identifiers.html). Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the MySQL Server exists. Changing this forces a new resource to be created.
  /// [serverName] Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
  FlexibleDatabaseState({
    pulumi.Output<String>? charset,
    pulumi.Output<String>? collation,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? serverName,
  }) :
      charset = pulumi.Input.asOptionalInput<String>(charset),
      collation = pulumi.Input.asOptionalInput<String>(collation),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      serverName = pulumi.Input.asOptionalInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charset': ?charset,
      'collation': ?collation,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'serverName': ?serverName,
    };
  }

  factory FlexibleDatabaseState.fromMap(Map<String, dynamic> map) {
    return FlexibleDatabaseState(
      charset: map['charset'] == null ? null : pulumi.Output.create<String>(map['charset'] as String),
      collation: map['collation'] == null ? null : pulumi.Output.create<String>(map['collation'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

