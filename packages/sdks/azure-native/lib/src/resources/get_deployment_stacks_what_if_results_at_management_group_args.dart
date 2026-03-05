// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_get_deployment_stacks_what_if_results_at_management_group_args_doc}
/// Arguments for getDeploymentStacksWhatIfResultsAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_resources_get_deployment_stacks_what_if_results_at_management_group_args_doc}
class GetDeploymentStacksWhatIfResultsAtManagementGroupArgs {
  /// Name of the deployment stack what-if result.
  final pulumi.Input<String> deploymentStacksWhatIfResultName;
  /// The name of the management group. The name is case insensitive.
  final pulumi.Input<String> managementGroupId;

  /// Creates a new [GetDeploymentStacksWhatIfResultsAtManagementGroupArgs].
  /// [deploymentStacksWhatIfResultName] Name of the deployment stack what-if result.
  /// [managementGroupId] The name of the management group. The name is case insensitive.
  GetDeploymentStacksWhatIfResultsAtManagementGroupArgs({
    required this.deploymentStacksWhatIfResultName,
    required this.managementGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStacksWhatIfResultName': deploymentStacksWhatIfResultName,
      'managementGroupId': managementGroupId,
    };
  }

  factory GetDeploymentStacksWhatIfResultsAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentStacksWhatIfResultsAtManagementGroupArgs(
      deploymentStacksWhatIfResultName: pulumi.Input.fromValue(map['deploymentStacksWhatIfResultName'] as String),
      managementGroupId: pulumi.Input.fromValue(map['managementGroupId'] as String),
    );
  }
}

