// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_get_storage_insight_config_args_doc}
/// Arguments for getStorageInsightConfig.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_get_storage_insight_config_args_doc}
class GetStorageInsightConfigArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the storageInsightsConfigs resource
  final pulumi.Input<String> storageInsightName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetStorageInsightConfigArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageInsightName] Name of the storageInsightsConfigs resource
  /// [workspaceName] The name of the workspace.
  GetStorageInsightConfigArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> storageInsightName,
    required pulumi.Output<String> workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageInsightName = pulumi.Input.asInput<String>(storageInsightName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'storageInsightName': storageInsightName,
      'workspaceName': workspaceName,
    };
  }

  factory GetStorageInsightConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageInsightConfigArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      storageInsightName: pulumi.Output.create<String>(map['storageInsightName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

