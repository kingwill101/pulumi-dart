// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_execute_status.dart';

/// {@template pulumi_sql_database_advisor_args_doc}
/// The set of arguments for DatabaseAdvisor.
/// {@endtemplate}
/// {@macro pulumi_sql_database_advisor_args_doc}
class DatabaseAdvisorArgs {
  /// The name of the Database Advisor.
  final pulumi.Input<String>? advisorName;
  /// Gets the auto-execute status (whether to let the system execute the recommendations) of this advisor. Possible values are 'Enabled' and 'Disabled'
  final pulumi.Input<AutoExecuteStatus> autoExecuteStatus;
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [DatabaseAdvisorArgs].
  /// [advisorName] The name of the Database Advisor.
  /// [autoExecuteStatus] Gets the auto-execute status (whether to let the system execute the recommendations) of this advisor. Possible values are 'Enabled' and 'Disabled'
  /// [databaseName] The name of the database.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  DatabaseAdvisorArgs({
    pulumi.Output<String>? advisorName,
    required pulumi.Output<AutoExecuteStatus> autoExecuteStatus,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      advisorName = pulumi.Input.asOptionalInput<String>(advisorName),
      autoExecuteStatus = pulumi.Input.asInput<AutoExecuteStatus>(autoExecuteStatus),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advisorName': ?advisorName,
      'autoExecuteStatus': pulumi.Input.mapInputValue<AutoExecuteStatus, String>(autoExecuteStatus, (value) => value.value),
      'databaseName': databaseName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory DatabaseAdvisorArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseAdvisorArgs(
      advisorName: map['advisorName'] == null ? null : pulumi.Output.create<String>(map['advisorName'] as String),
      autoExecuteStatus: pulumi.Output.create<AutoExecuteStatus>(AutoExecuteStatus.fromValue(map['autoExecuteStatus'] as String)),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

