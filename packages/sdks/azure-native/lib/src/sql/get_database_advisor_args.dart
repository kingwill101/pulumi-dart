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
    required this.advisorName,
    required this.databaseName,
    required this.resourceGroupName,
    required this.serverName,
  });

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
      advisorName: pulumi.Input.fromValue(map['advisorName'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
    );
  }
}
