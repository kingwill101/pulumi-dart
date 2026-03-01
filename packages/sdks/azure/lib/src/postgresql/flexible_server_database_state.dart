// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlexibleServerDatabase resources.
class FlexibleServerDatabaseState {
  /// Specifies the Charset for the Azure PostgreSQL Flexible Server Database, which needs [to be a valid PostgreSQL Charset](https://www.postgresql.org/docs/current/static/multibyte.html). Defaults to `UTF8`. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created.
  final pulumi.Input<String>? charset;
  /// Specifies the Collation for the Azure PostgreSQL Flexible Server Database, which needs [to be a valid PostgreSQL Collation](https://www.postgresql.org/docs/current/static/collation.html). Defaults to `en_US.utf8`. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created.
  final pulumi.Input<String>? collation;
  /// Specifies the name of the PostgreSQL Database, which needs [to be a valid PostgreSQL identifier](https://www.postgresql.org/docs/current/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIERS). Changing this forces a new Azure PostgreSQL Flexible Server Database to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Azure PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Database. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created.
  final pulumi.Input<String>? serverId;

  /// Creates a new [FlexibleServerDatabaseState].
  /// [charset] Specifies the Charset for the Azure PostgreSQL Flexible Server Database, which needs [to be a valid PostgreSQL Charset](https://www.postgresql.org/docs/current/static/multibyte.html). Defaults to `UTF8`. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created.
  /// [collation] Specifies the Collation for the Azure PostgreSQL Flexible Server Database, which needs [to be a valid PostgreSQL Collation](https://www.postgresql.org/docs/current/static/collation.html). Defaults to `en_US.utf8`. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created.
  /// [name] Specifies the name of the PostgreSQL Database, which needs [to be a valid PostgreSQL identifier](https://www.postgresql.org/docs/current/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIERS). Changing this forces a new Azure PostgreSQL Flexible Server Database to be created.
  /// [serverId] The ID of the Azure PostgreSQL Flexible Server from which to create this PostgreSQL Flexible Server Database. Changing this forces a new Azure PostgreSQL Flexible Server Database to be created.
  FlexibleServerDatabaseState({
    pulumi.Output<String>? charset,
    pulumi.Output<String>? collation,
    pulumi.Output<String>? name,
    pulumi.Output<String>? serverId,
  }) :
      charset = pulumi.Input.asOptionalInput<String>(charset),
      collation = pulumi.Input.asOptionalInput<String>(collation),
      name = pulumi.Input.asOptionalInput<String>(name),
      serverId = pulumi.Input.asOptionalInput<String>(serverId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'charset': ?charset,
      'collation': ?collation,
      'name': ?name,
      'serverId': ?serverId,
    };
  }

  factory FlexibleServerDatabaseState.fromMap(Map<String, dynamic> map) {
    return FlexibleServerDatabaseState(
      charset: map['charset'] == null ? null : pulumi.Output.create<String>(map['charset'] as String),
      collation: map['collation'] == null ? null : pulumi.Output.create<String>(map['collation'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
    );
  }
}

