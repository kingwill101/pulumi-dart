// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes an Azure Synapse output data source.
class AzureSynapseOutputDataSourceResponse {
  /// The name of the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? database;

  /// The password that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? password;

  /// The name of the SQL server containing the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? server;

  /// The name of the table in the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? table;

  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'Microsoft.Sql/Server/DataWarehouse'.
  final pulumi.Input<String> type;

  /// The user name that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? user;

  /// Creates a new [AzureSynapseOutputDataSourceResponse].
  /// [database] The name of the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [password] The password that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [server] The name of the SQL server containing the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [table] The name of the table in the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// [user] The user name that will be used to connect to the Azure SQL database. Required on PUT (CreateOrReplace) requests.
  AzureSynapseOutputDataSourceResponse({
    this.database,
    this.password,
    this.server,
    this.table,
    required this.type,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'password': ?password,
      'server': ?server,
      'table': ?table,
      'type': type,
      'user': ?user,
    };
  }

  factory AzureSynapseOutputDataSourceResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureSynapseOutputDataSourceResponse(
      database: (() {
        final guardedValue = map['database'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
