// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_streamanalytics_output_mssql_output_mssql_args_doc}
/// The set of arguments for OutputMssql.
/// {@endtemplate}
/// {@macro pulumi_streamanalytics_output_mssql_output_mssql_args_doc}
class OutputMssqlArgs {
  /// The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  final pulumi.Input<String>? authenticationMode;
  /// The MS SQL database name where the reference table exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> database;
  /// The max batch count to write to the SQL Database. Defaults to `10000`. Possible values are between `1` and `1073741824`.
  final pulumi.Input<double>? maxBatchCount;
  /// The max writer count for the SQL Database. Defaults to `1`. Possible values are `0` which bases the writer count on the query partition and `1` which corresponds to a single writer.
  final pulumi.Input<double>? maxWriterCount;
  /// The name of the Stream Output. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Password used together with username, to login to the Microsoft SQL Server. Required if `authentication_mode` is `ConnectionString`.
  final pulumi.Input<String>? password;
  /// The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The SQL server url. Changing this forces a new resource to be created.
  final pulumi.Input<String> server;
  /// The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  final pulumi.Input<String> streamAnalyticsJobName;
  /// Table in the database that the output points to. Changing this forces a new resource to be created.
  final pulumi.Input<String> table;
  /// Username used to login to the Microsoft SQL Server. Changing this forces a new resource to be created. Required if `authentication_mode` is `ConnectionString`.
  final pulumi.Input<String>? user;

  /// Creates a new [OutputMssqlArgs].
  /// [authenticationMode] The authentication mode for the Stream Output. Possible values are `Msi` and `ConnectionString`. Defaults to `ConnectionString`.
  /// [database] The MS SQL database name where the reference table exists. Changing this forces a new resource to be created.
  /// [maxBatchCount] The max batch count to write to the SQL Database. Defaults to `10000`. Possible values are between `1` and `1073741824`.
  /// [maxWriterCount] The max writer count for the SQL Database. Defaults to `1`. Possible values are `0` which bases the writer count on the query partition and `1` which corresponds to a single writer.
  /// [name] The name of the Stream Output. Changing this forces a new resource to be created.
  /// [password] Password used together with username, to login to the Microsoft SQL Server. Required if `authentication_mode` is `ConnectionString`.
  /// [resourceGroupName] The name of the Resource Group where the Stream Analytics Job exists. Changing this forces a new resource to be created.
  /// [server] The SQL server url. Changing this forces a new resource to be created.
  /// [streamAnalyticsJobName] The name of the Stream Analytics Job. Changing this forces a new resource to be created.
  /// [table] Table in the database that the output points to. Changing this forces a new resource to be created.
  /// [user] Username used to login to the Microsoft SQL Server. Changing this forces a new resource to be created. Required if `authentication_mode` is `ConnectionString`.
  OutputMssqlArgs({
    pulumi.Output<String>? authenticationMode,
    required pulumi.Output<String> database,
    pulumi.Output<double>? maxBatchCount,
    pulumi.Output<double>? maxWriterCount,
    pulumi.Output<String>? name,
    pulumi.Output<String>? password,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> server,
    required pulumi.Output<String> streamAnalyticsJobName,
    required pulumi.Output<String> table,
    pulumi.Output<String>? user,
  }) :
      authenticationMode = pulumi.Input.asOptionalInput<String>(authenticationMode),
      database = pulumi.Input.asInput<String>(database),
      maxBatchCount = pulumi.Input.asOptionalInput<double>(maxBatchCount),
      maxWriterCount = pulumi.Input.asOptionalInput<double>(maxWriterCount),
      name = pulumi.Input.asOptionalInput<String>(name),
      password = pulumi.Input.asOptionalInput<String>(password),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      server = pulumi.Input.asInput<String>(server),
      streamAnalyticsJobName = pulumi.Input.asInput<String>(streamAnalyticsJobName),
      table = pulumi.Input.asInput<String>(table),
      user = pulumi.Input.asOptionalInput<String>(user);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMode': ?authenticationMode,
      'database': database,
      'maxBatchCount': ?maxBatchCount,
      'maxWriterCount': ?maxWriterCount,
      'name': ?name,
      'password': ?password,
      'resourceGroupName': resourceGroupName,
      'server': server,
      'streamAnalyticsJobName': streamAnalyticsJobName,
      'table': table,
      'user': ?user,
    };
  }

  factory OutputMssqlArgs.fromMap(Map<String, dynamic> map) {
    return OutputMssqlArgs(
      authenticationMode: map['authenticationMode'] == null ? null : pulumi.Output.create<String>(map['authenticationMode'] as String),
      database: pulumi.Output.create<String>(map['database'] as String),
      maxBatchCount: map['maxBatchCount'] == null ? null : pulumi.Output.create<double>(map['maxBatchCount'] as double),
      maxWriterCount: map['maxWriterCount'] == null ? null : pulumi.Output.create<double>(map['maxWriterCount'] as double),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      server: pulumi.Output.create<String>(map['server'] as String),
      streamAnalyticsJobName: pulumi.Output.create<String>(map['streamAnalyticsJobName'] as String),
      table: pulumi.Output.create<String>(map['table'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
    );
  }
}

