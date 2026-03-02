// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OutputSynapse resources.
class OutputSynapseState {
  /// The name of the Azure SQL database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? database;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The password that will be used to connect to the Azure SQL database.
  final pulumi.Input<String>? password;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The name of the SQL server containing the Azure SQL database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? server;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String>? streamAnalyticsJobName;
  /// The name of the table in the Azure SQL database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? table;
  /// The user name that will be used to connect to the Azure SQL database. Changing this forces a new resource to be created.
  final pulumi.Input<String>? user;

  /// Creates a new [OutputSynapseState].
  /// [database] The name of the Azure SQL database. Changing this forces a new resource to be created.
  /// [name] The name of the Stream Output. Changing this forces a new resource to be created.
  /// [password] The password that will be used to connect to the Azure SQL database.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [server] The name of the SQL server containing the Azure SQL database. Changing this forces a new resource to be created.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  /// [table] The name of the table in the Azure SQL database. Changing this forces a new resource to be created.
  /// [user] The user name that will be used to connect to the Azure SQL database. Changing this forces a new resource to be created.
  OutputSynapseState({
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
      database: map['database'] == null ? null : (map['database']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      server: map['server'] == null ? null : (map['server']! as String).input(),
      streamAnalyticsJobName: map['streamAnalyticsJobName'] == null ? null : (map['streamAnalyticsJobName']! as String).input(),
      table: map['table'] == null ? null : (map['table']! as String).input(),
      user: map['user'] == null ? null : (map['user']! as String).input(),
    );
  }
}

