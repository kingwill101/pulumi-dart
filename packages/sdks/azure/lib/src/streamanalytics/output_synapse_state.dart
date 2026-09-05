// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OutputSynapse resources.
class OutputSynapseState {
  /// The name of the Azure SQL database. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? database;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The password that will be used to connect to the Azure SQL database.
  final pulumi.Input<String?>? password;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? resourceGroupName;
  /// The name of the SQL server containing the Azure SQL database. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? server;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? streamAnalyticsJobName;
  /// The name of the table in the Azure SQL database. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? table;
  /// The user name that will be used to connect to the Azure SQL database. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? user;

  /// Creates a new [OutputSynapseState].
  /// [database] The name of the Azure SQL database. Changing this forces a new resource to be created.
  /// [name] The name of the Stream Output. Changing this forces a new resource to be created.
  /// [password] The password that will be used to connect to the Azure SQL database.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [server] The name of the SQL server containing the Azure SQL database. Changing this forces a new resource to be created.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  /// [table] The name of the table in the Azure SQL database. Changing this forces a new resource to be created.
  /// [user] The user name that will be used to connect to the Azure SQL database. Changing this forces a new resource to be created.
  const OutputSynapseState({
    this.database,
    this.name,
    this.password,
    this.resourceGroupName,
    this.server,
    this.streamAnalyticsJobName,
    this.table,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': ?database,
      'name': ?name,
      'password': ?password,
      'resourceGroupName': ?resourceGroupName,
      'server': ?server,
      'streamAnalyticsJobName': ?streamAnalyticsJobName,
      'table': ?table,
      'user': ?user,
    };
  }

  factory OutputSynapseState.fromMap(Map<String, dynamic> map) {
    return OutputSynapseState(
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamAnalyticsJobName: (() { final guardedValue = map['streamAnalyticsJobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
