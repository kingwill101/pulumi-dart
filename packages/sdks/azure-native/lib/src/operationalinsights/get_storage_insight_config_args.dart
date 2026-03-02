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
    required this.resourceGroupName,
    required this.storageInsightName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'storageInsightName': storageInsightName,
      'workspaceName': workspaceName,
    };
  }

  factory GetStorageInsightConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageInsightConfigArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageInsightName: (map['storageInsightName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

