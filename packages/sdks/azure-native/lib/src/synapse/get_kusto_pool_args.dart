// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_kusto_pool_args_doc}
/// Arguments for getKustoPool.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_kusto_pool_args_doc}
class GetKustoPoolArgs {
  /// The name of the Kusto pool.
  final pulumi.Input<String> kustoPoolName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetKustoPoolArgs].
  /// [kustoPoolName] The name of the Kusto pool.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetKustoPoolArgs({
    required pulumi.Output<String> kustoPoolName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      kustoPoolName = pulumi.Input.asInput<String>(kustoPoolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kustoPoolName': kustoPoolName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetKustoPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetKustoPoolArgs(
      kustoPoolName: pulumi.Output.create<String>(map['kustoPoolName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

