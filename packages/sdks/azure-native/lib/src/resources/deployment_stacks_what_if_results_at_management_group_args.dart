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
    pulumi.Output<String>? deploymentStacksWhatIfResultName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> managementGroupId,
    pulumi.Output<DeploymentStacksWhatIfResultProperties>? properties,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      deploymentStacksWhatIfResultName = pulumi.Input.asOptionalInput<String>(deploymentStacksWhatIfResultName),
      location = pulumi.Input.asOptionalInput<String>(location),
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      properties = pulumi.Input.asOptionalInput<DeploymentStacksWhatIfResultProperties>(properties),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      deploymentStacksWhatIfResultName: map['deploymentStacksWhatIfResultName'] == null ? null : pulumi.Output.create<String>(map['deploymentStacksWhatIfResultName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      managementGroupId: pulumi.Output.create<String>(map['managementGroupId'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<DeploymentStacksWhatIfResultProperties>(DeploymentStacksWhatIfResultProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

