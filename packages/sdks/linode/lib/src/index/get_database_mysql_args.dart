// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_database_mysql_get_database_mysql_args_doc}
/// Arguments for getDatabaseMysql.
/// {@endtemplate}
/// {@macro pulumi_index_get_database_mysql_get_database_mysql_args_doc}
class GetDatabaseMysqlArgs {
  /// The ID of the MySQL database. Deprecated: Use id instead.
  final pulumi.Input<int>? databaseId;
  /// The ID of the MySQL database. Mutually exclusive with `database_id`.
  final pulumi.Input<int>? id;

  /// Creates a new [GetDatabaseMysqlArgs].
  /// [databaseId] The ID of the MySQL database. Deprecated: Use id instead.
  /// [id] The ID of the MySQL database. Mutually exclusive with `database_id`.
  GetDatabaseMysqlArgs({
    this.databaseId,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseId': ?databaseId,
      'id': ?id,
    };
  }

  factory GetDatabaseMysqlArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlArgs(
      databaseId: (() { final guardedValue = map['databaseId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

