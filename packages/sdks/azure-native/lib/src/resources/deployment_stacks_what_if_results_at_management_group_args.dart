// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_stacks_what_if_result_properties.dart';

/// {@template pulumi_resources_deployment_stacks_what_if_results_at_management_group_args_doc}
/// The set of arguments for DeploymentStacksWhatIfResultsAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_resources_deployment_stacks_what_if_results_at_management_group_args_doc}
class DeploymentStacksWhatIfResultsAtManagementGroupArgs {
  /// Name of the deployment stack what-if result.
  final pulumi.Input<String?>? deploymentStacksWhatIfResultName;
  /// The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  final pulumi.Input<String?>? location;
  /// The management group ID.
  final pulumi.Input<String> managementGroupId;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DeploymentStacksWhatIfResultProperties?>? properties;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DeploymentStacksWhatIfResultsAtManagementGroupArgs].
  /// [deploymentStacksWhatIfResultName] Name of the deployment stack what-if result.
  /// [location] The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  /// [managementGroupId] The management group ID.
  /// [properties] The resource-specific properties for this resource.
  /// [tags] Resource tags.
  const DeploymentStacksWhatIfResultsAtManagementGroupArgs({
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
      deploymentStacksWhatIfResultName: (() { final guardedValue = map['deploymentStacksWhatIfResultName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managementGroupId: pulumi.Input.fromValue(map['managementGroupId'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStacksWhatIfResultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
