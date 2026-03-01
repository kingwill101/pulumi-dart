// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_database_advisor_args_doc}
/// Arguments for getDatabaseAdvisor.
/// {@endtemplate}
/// {@macro pulumi_sql_get_database_advisor_args_doc}
class GetDatabaseAdvisorArgs {
  /// The name of the Database Advisor.
  final pulumi.Input<String> advisorName;
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetDatabaseAdvisorArgs].
  /// [advisorName] The name of the Database Advisor.
  /// [databaseName] The name of the database.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetDatabaseAdvisorArgs({
    required pulumi.Output<String> advisorName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      advisorName = pulumi.Input.asInput<String>(advisorName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advisorName': advisorName,
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetDatabaseAdvisorArgs.fromMap(Map<String, dynamic> map) {
    return GetDatabaseAdvisorArgs(
      advisorName: pulumi.Output.create<String>(map['advisorName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

