// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an Azure SQL database output data source.
class AzureSqlDatabaseOutputDataSourceResponse {
  /// Authentication Mode.
  final pulumi.Input<String>? authenticationMode;

  /// The name of the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? database;

  /// Max Batch count for write to Sql database, the default value is 10,000. Optional on PUT requests.
  final pulumi.Input<double>? maxBatchCount;

  /// Max Writer count, currently only 1(single writer) and 0(based on query partition) are available. Optional on PUT requests.
  final pulumi.Input<double>? maxWriterCount;

  /// The password that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? password;

  /// The name of the SQL server containing the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? server;

  /// The name of the table in the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? table;

  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.Sql/Server/Database'.
  final pulumi.Input<String> type;

  /// The user name that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? user;

  /// Creates a new [AzureSqlDatabaseOutputDataSourceResponse].
  /// [authenticationMode] Authentication Mode.
  /// [database] The name of the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [maxBatchCount] Max Batch count for write to Sql database, the default value is 10,000. Optional on PUT requests.
  /// [maxWriterCount] Max Writer count, currently only 1(single writer) and 0(based on query partition) are available. Optional on PUT requests.
  /// [password] The password that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [server] The name of the SQL server containing the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [table] The name of the table in the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// [user] The user name that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  AzureSqlDatabaseOutputDataSourceResponse({
    this.authenticationMode,
    this.database,
    this.maxBatchCount,
    this.maxWriterCount,
    this.password,
    this.server,
    this.table,
    required this.type,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'database': ?database,
      'maxBatchCount': ?maxBatchCount,
      'maxWriterCount': ?maxWriterCount,
      'password': ?password,
      'server': ?server,
      'table': ?table,
      'type': type,
      'user': ?user,
    };
  }

  factory AzureSqlDatabaseOutputDataSourceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureSqlDatabaseOutputDataSourceResponse(
      authenticationMode: (() {
        final guardedValue = map['authenticationMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      database: (() {
        final guardedValue = map['database'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxBatchCount: (() {
        final guardedValue = map['maxBatchCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      maxWriterCount: (() {
        final guardedValue = map['maxWriterCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      server: (() {
        final guardedValue = map['server'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      table: (() {
        final guardedValue = map['table'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      user: (() {
        final guardedValue = map['user'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
