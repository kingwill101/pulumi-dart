// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mssql_get_database_get_database_args_doc}
/// Arguments for getDatabase.
/// {@endtemplate}
/// {@macro pulumi_mssql_get_database_get_database_args_doc}
class GetDatabaseArgs {
  /// The name of the MS SQL Database.
  final pulumi.Input<String> name;

  /// The id of the MS SQL Server on which to read the database.
  final pulumi.Input<String> serverId;

  /// Creates a new [GetDatabaseArgs].
  /// [name] The name of the MS SQL Database.
  /// [serverId] The id of the MS SQL Server on which to read the database.
  GetDatabaseArgs({required this.name, required this.serverId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'serverId': serverId};
  }

  factory GetDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
    );
  }
}
