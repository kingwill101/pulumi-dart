// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_list_kusto_pool_follower_databases_args_doc}
/// Arguments for listKustoPoolFollowerDatabases.
/// {@endtemplate}
/// {@macro pulumi_synapse_list_kusto_pool_follower_databases_args_doc}
class ListKustoPoolFollowerDatabasesArgs {
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListKustoPoolFollowerDatabasesArgs].
  /// [kustoPoolName] The name of the Kusto pool.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  ListKustoPoolFollowerDatabasesArgs({
    required this.kustoPoolName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kustoPoolName': kustoPoolName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ListKustoPoolFollowerDatabasesArgs.fromMap(Map<String, dynamic> map) {
    return ListKustoPoolFollowerDatabasesArgs(
      kustoPoolName: (map['kustoPoolName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

