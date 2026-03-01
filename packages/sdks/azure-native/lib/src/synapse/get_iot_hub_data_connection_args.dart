// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_iot_hub_data_connection_args_doc}
/// Arguments for getIotHubDataConnection.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_iot_hub_data_connection_args_doc}
class GetIotHubDataConnectionArgs {
  /// The name of the data connection.
  final pulumi.Input<String> dataConnectionName;
  /// The name of the database in the Kusto pool.
  final pulumi.Input<String> databaseName;
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetIotHubDataConnectionArgs].
  /// [dataConnectionName] The name of the data connection.
  /// [databaseName] The name of the database in the Kusto pool.
  /// [kustoPoolName] The name of the Kusto pool.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetIotHubDataConnectionArgs({
    required pulumi.Output<String> dataConnectionName,
    required pulumi.Output<String> databaseName,
    required pulumi.Output<String> kustoPoolName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      dataConnectionName = pulumi.Input.asInput<String>(dataConnectionName),
      databaseName = pulumi.Input.asInput<String>(databaseName),
      kustoPoolName = pulumi.Input.asInput<String>(kustoPoolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectionName': dataConnectionName,
      'databaseName': databaseName,
      'kustoPoolName': kustoPoolName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetIotHubDataConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetIotHubDataConnectionArgs(
      dataConnectionName: pulumi.Output.create<String>(map['dataConnectionName'] as String),
      databaseName: pulumi.Output.create<String>(map['databaseName'] as String),
      kustoPoolName: pulumi.Output.create<String>(map['kustoPoolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

