// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synapse_get_big_data_pool_args_doc}
/// Arguments for getBigDataPool.
/// {@endtemplate}
/// {@macro pulumi_synapse_get_big_data_pool_args_doc}
class GetBigDataPoolArgs {
  /// Big Data pool name
  final pulumi.Input<String> bigDataPoolName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetBigDataPoolArgs].
  /// [bigDataPoolName] Big Data pool name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetBigDataPoolArgs({
    required this.bigDataPoolName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigDataPoolName': bigDataPoolName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetBigDataPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetBigDataPoolArgs(
      bigDataPoolName: pulumi.Input.fromValue(map['bigDataPoolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
