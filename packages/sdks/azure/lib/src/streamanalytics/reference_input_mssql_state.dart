// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ReferenceInputMssql resources.
class ReferenceInputMssqlState {
  /// The MS SQL database name where the reference data exists.
  final pulumi.Input<String>? database;
  /// The query used to retrieve incremental changes in the reference data from the MS SQL database. Cannot be set when `refresh_type` is `Static`.
  final pulumi.Input<String>? deltaSnapshotQuery;
  /// The query used to retrieve the reference data from the MS SQL database.
  final pulumi.Input<String>? fullSnapshotQuery;
  /// The name of the Reference Input MS SQL data. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The password to connect to the MS SQL database.
  final pulumi.Input<String>? password;
  /// The frequency in `hh:mm:ss` with which the reference data should be retrieved from the MS SQL database e.g. `00:20:00` for every 20 minutes. Must be set when `refresh_type` is `RefreshPeriodicallyWithFull` or `RefreshPeriodicallyWithDelta`.
  final pulumi.Input<String>? refreshIntervalDuration;
  /// Defines whether and how the reference data should be refreshed. Accepted values are `Static`, `RefreshPeriodicallyWithFull` and `RefreshPeriodicallyWithDelta`.
  final pulumi.Input<String>? refreshType;
  /// The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The fully qualified domain name of the MS SQL server.
  final pulumi.Input<String>? server;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobName;
  /// The name of the table in the Azure SQL database.
  final pulumi.Input<String>? table;
  /// The username to connect to the MS SQL database.
  final pulumi.Input<String>? username;

  /// Creates a new [ReferenceInputMssqlState].
  /// [database] The MS SQL database name where the reference data exists.
  /// [deltaSnapshotQuery] The query used to retrieve incremental changes in the reference data from the MS SQL database. Cannot be set when `refresh_type` is `Static`.
  /// [fullSnapshotQuery] The query used to retrieve the reference data from the MS SQL database.
  /// [name] The name of the Reference Input MS SQL data. Changing this forces a new resource to be created.
  /// [password] The password to connect to the MS SQL database.
  /// [refreshIntervalDuration] The frequency in `hh:mm:ss` with which the reference data should be retrieved from the MS SQL database e.g. `00:20:00` for every 20 minutes. Must be set when `refresh_type` is `RefreshPeriodicallyWithFull` or `RefreshPeriodicallyWithDelta`.
  /// [refreshType] Defines whether and how the reference data should be refreshed. Accepted values are `Static`, `RefreshPeriodicallyWithFull` and `RefreshPeriodicallyWithDelta`.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job should exist. Changing this forces a new resource to be created.
  /// [server] The fully qualified domain name of the MS SQL server.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  /// [table] The name of the table in the Azure SQL database.
  /// [username] The username to connect to the MS SQL database.
  ReferenceInputMssqlState({
    this.database,
    this.deltaSnapshotQuery,
    this.fullSnapshotQuery,
    this.name,
    this.password,
    this.refreshIntervalDuration,
    this.refreshType,
    this.resourceGroupName,
    this.server,
    this.streamAnalyticsJobName,
    this.table,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'deltaSnapshotQuery': ?deltaSnapshotQuery,
      'fullSnapshotQuery': ?fullSnapshotQuery,
      'name': ?name,
      'password': ?password,
      'refreshIntervalDuration': ?refreshIntervalDuration,
      'refreshType': ?refreshType,
      'resourceGroupName': ?resourceGroupName,
      'server': ?server,
      'streamAnalyticsJobName': ?streamAnalyticsJobName,
      'table': ?table,
      'username': ?username,
    };
  }

  factory ReferenceInputMssqlState.fromMap(Map<String, dynamic> map) {
    return ReferenceInputMssqlState(
      database: map['database'] == null ? null : (map['database'] as String).input(),
      deltaSnapshotQuery: map['deltaSnapshotQuery'] == null ? null : (map['deltaSnapshotQuery'] as String).input(),
      fullSnapshotQuery: map['fullSnapshotQuery'] == null ? null : (map['fullSnapshotQuery'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      refreshIntervalDuration: map['refreshIntervalDuration'] == null ? null : (map['refreshIntervalDuration'] as String).input(),
      refreshType: map['refreshType'] == null ? null : (map['refreshType'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      server: map['server'] == null ? null : (map['server'] as String).input(),
      streamAnalyticsJobName: map['streamAnalyticsJobName'] == null ? null : (map['streamAnalyticsJobName'] as String).input(),
      table: map['table'] == null ? null : (map['table'] as String).input(),
      username: map['username'] == null ? null : (map['username'] as String).input(),
    );
  }
}

