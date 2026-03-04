// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an Azure SQL database reference input data source.
class AzureSqlReferenceInputDataSource {
  /// This element is associated with the datasource element. This is the name of the database that output will be written to.
  final pulumi.Input<String>? database;

  /// This element is associated with the datasource element. This query is used to fetch incremental changes from the SQL database. To use this option, we recommend using temporal tables in Azure SQL Database.
  final pulumi.Input<String>? deltaSnapshotQuery;

  /// This element is associated with the datasource element. This query is used to fetch data from the sql database.
  final pulumi.Input<String>? fullSnapshotQuery;

  /// This element is associated with the datasource element. This is the password that will be used to connect to the SQL Database instance.
  final pulumi.Input<String>? password;

  /// This element is associated with the datasource element. This indicates how frequently the data will be fetched from the database. It is of DateTime format.
  final pulumi.Input<String>? refreshRate;

  /// Indicates the type of data refresh option.
  final pulumi.Input<String>? refreshType;

  /// This element is associated with the datasource element. This is the name of the server that contains the database that will be written to.
  final pulumi.Input<String>? server;

  /// This element is associated with the datasource element. The name of the table in the Azure SQL database..
  final pulumi.Input<String>? table;

  /// Indicates the type of input data source containing reference data. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.Sql/Server/Database'.
  final pulumi.Input<String> type;

  /// This element is associated with the datasource element. This is the user name that will be used to connect to the SQL Database instance.
  final pulumi.Input<String>? user;

  /// Creates a new [AzureSqlReferenceInputDataSource].
  /// [database] This element is associated with the datasource element. This is the name of the database that output will be written to.
  /// [deltaSnapshotQuery] This element is associated with the datasource element. This query is used to fetch incremental changes from the SQL database. To use this option, we recommend using temporal tables in Azure SQL Database.
  /// [fullSnapshotQuery] This element is associated with the datasource element. This query is used to fetch data from the sql database.
  /// [password] This element is associated with the datasource element. This is the password that will be used to connect to the SQL Database instance.
  /// [refreshRate] This element is associated with the datasource element. This indicates how frequently the data will be fetched from the database. It is of DateTime format.
  /// [refreshType] Indicates the type of data refresh option.
  /// [server] This element is associated with the datasource element. This is the name of the server that contains the database that will be written to.
  /// [table] This element is associated with the datasource element. The name of the table in the Azure SQL database..
  /// [type] Indicates the type of input data source containing reference data. Required on PUT (CreateOrReplace) requests.
  /// [user] This element is associated with the datasource element. This is the user name that will be used to connect to the SQL Database instance.
  AzureSqlReferenceInputDataSource({
    this.database,
    this.deltaSnapshotQuery,
    this.fullSnapshotQuery,
    this.password,
    this.refreshRate,
    this.refreshType,
    this.server,
    this.table,
    required this.type,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'deltaSnapshotQuery': ?deltaSnapshotQuery,
      'fullSnapshotQuery': ?fullSnapshotQuery,
      'password': ?password,
      'refreshRate': ?refreshRate,
      'refreshType': ?refreshType,
      'server': ?server,
      'table': ?table,
      'type': type,
      'user': ?user,
    };
  }

  factory AzureSqlReferenceInputDataSource.fromMap(Map<String, dynamic> map) {
    return AzureSqlReferenceInputDataSource(
      database: (() {
        final guardedValue = map['database'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deltaSnapshotQuery: (() {
        final guardedValue = map['deltaSnapshotQuery'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fullSnapshotQuery: (() {
        final guardedValue = map['fullSnapshotQuery'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      refreshRate: (() {
        final guardedValue = map['refreshRate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      refreshType: (() {
        final guardedValue = map['refreshType'];
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
