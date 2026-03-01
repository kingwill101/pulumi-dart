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
    pulumi.Output<String>? database,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? server,
    pulumi.Output<String>? streamAnalyticsJobName,
    pulumi.Output<String>? table,
    pulumi.Output<String>? user,
  }) :
      database = pulumi.Input.asOptionalInput<String>(database),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      server = pulumi.Input.asOptionalInput<String>(server),
      streamAnalyticsJobName = pulumi.Input.asOptionalInput<String>(streamAnalyticsJobName),
      table = pulumi.Input.asOptionalInput<String>(table),
      user = pulumi.Input.asOptionalInput<String>(user);

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
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      server: map['server'] == null ? null : pulumi.Output.create<String>(map['server'] as String),
      streamAnalyticsJobName: map['streamAnalyticsJobName'] == null ? null : pulumi.Output.create<String>(map['streamAnalyticsJobName'] as String),
      table: map['table'] == null ? null : pulumi.Output.create<String>(map['table'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

