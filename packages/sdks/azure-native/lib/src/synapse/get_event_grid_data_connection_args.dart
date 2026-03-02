// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_event_grid_data_connection_args_doc}
/// Arguments for getEventGridDataConnection.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_event_grid_data_connection_args_doc}
class GetEventGridDataConnectionArgs {
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

  /// Creates a new [GetEventGridDataConnectionArgs].
  /// [dataConnectionName] The name of the data connection.
  /// [databaseName] The name of the database in the Kusto pool.
  /// [kustoPoolName] The name of the Kusto pool.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetEventGridDataConnectionArgs({
    required this.dataConnectionName,
    required this.databaseName,
    required this.kustoPoolName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataConnectionName': dataConnectionName,
      'databaseName': databaseName,
      'kustoPoolName': kustoPoolName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetEventGridDataConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetEventGridDataConnectionArgs(
      dataConnectionName: (map['dataConnectionName'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      kustoPoolName: (map['kustoPoolName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

