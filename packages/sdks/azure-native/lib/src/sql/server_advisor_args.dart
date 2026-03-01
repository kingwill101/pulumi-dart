// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_execute_status.dart';

/// {@template pulumi_sql_server_advisor_args_doc}
/// The set of arguments for ServerAdvisor.
/// {@endtemplate}
/// {@macro pulumi_sql_server_advisor_args_doc}
class ServerAdvisorArgs {
  /// The name of the Server Advisor.
  final pulumi.Input<String>? advisorName;
  /// Gets the auto-execute status (whether to let the system execute the recommendations) of this advisor. Possible values are 'Enabled' and 'Disabled'
  final pulumi.Input<AutoExecuteStatus> autoExecuteStatus;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [ServerAdvisorArgs].
  /// [advisorName] The name of the Server Advisor.
  /// [autoExecuteStatus] Gets the auto-execute status (whether to let the system execute the recommendations) of this advisor. Possible values are 'Enabled' and 'Disabled'
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  ServerAdvisorArgs({
    pulumi.Output<String>? advisorName,
    required pulumi.Output<AutoExecuteStatus> autoExecuteStatus,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
  }) :
      advisorName = pulumi.Input.asOptionalInput<String>(advisorName),
      autoExecuteStatus = pulumi.Input.asInput<AutoExecuteStatus>(autoExecuteStatus),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advisorName': ?advisorName,
      'autoExecuteStatus': pulumi.Input.mapInputValue<AutoExecuteStatus, String>(autoExecuteStatus, (value) => value.value),
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory ServerAdvisorArgs.fromMap(Map<String, dynamic> map) {
    return ServerAdvisorArgs(
      advisorName: map['advisorName'] == null ? null : pulumi.Output.create<String>(map['advisorName'] as String),
      autoExecuteStatus: pulumi.Output.create<AutoExecuteStatus>(AutoExecuteStatus.fromValue(map['autoExecuteStatus'] as String)),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
    );
  }
}

