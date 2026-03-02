// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_stacks_what_if_result_properties.dart';

/// {@template pulumi_resources_deployment_stacks_what_if_results_at_management_group_args_doc}
/// The set of arguments for DeploymentStacksWhatIfResultsAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_resources_deployment_stacks_what_if_results_at_management_group_args_doc}
class DeploymentStacksWhatIfResultsAtManagementGroupArgs {
  /// Name of the deployment stack what-if result.
  final pulumi.Input<String>? deploymentStacksWhatIfResultName;
  /// The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  final pulumi.Input<String>? location;
  /// The name of the management group. The name is case insensitive.
  final pulumi.Input<String> managementGroupId;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DeploymentStacksWhatIfResultProperties>? properties;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DeploymentStacksWhatIfResultsAtManagementGroupArgs].
  /// [deploymentStacksWhatIfResultName] Name of the deployment stack what-if result.
  /// [location] The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  /// [managementGroupId] The name of the management group. The name is case insensitive.
  /// [properties] The resource-specific properties for this resource.
  /// [tags] Resource tags.
  DeploymentStacksWhatIfResultsAtManagementGroupArgs({
    this.deploymentStacksWhatIfResultName,
    this.location,
    required this.managementGroupId,
    this.properties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStacksWhatIfResultName': ?deploymentStacksWhatIfResultName,
      'location': ?location,
      'managementGroupId': managementGroupId,
      'properties': ?pulumi.Input.mapOptionalInputValue<DeploymentStacksWhatIfResultProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DeploymentStacksWhatIfResultsAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfResultsAtManagementGroupArgs(
      deploymentStacksWhatIfResultName: map['deploymentStacksWhatIfResultName'] == null ? null : (map['deploymentStacksWhatIfResultName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      managementGroupId: (map['managementGroupId'] as String).input(),
      properties: map['properties'] == null ? null : (DeploymentStacksWhatIfResultProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

