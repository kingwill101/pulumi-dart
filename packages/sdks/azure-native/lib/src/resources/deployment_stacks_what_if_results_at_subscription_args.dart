// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_stacks_what_if_result_properties.dart';

/// {@template pulumi_resources_deployment_stacks_what_if_results_at_subscription_args_doc}
/// The set of arguments for DeploymentStacksWhatIfResultsAtSubscription.
/// {@endtemplate}
/// {@macro pulumi_resources_deployment_stacks_what_if_results_at_subscription_args_doc}
class DeploymentStacksWhatIfResultsAtSubscriptionArgs {
  /// Name of the deployment stack what-if result.
  final pulumi.Input<String>? deploymentStacksWhatIfResultName;
  /// The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DeploymentStacksWhatIfResultProperties>? properties;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DeploymentStacksWhatIfResultsAtSubscriptionArgs].
  /// [deploymentStacksWhatIfResultName] Name of the deployment stack what-if result.
  /// [location] The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  /// [properties] The resource-specific properties for this resource.
  /// [tags] Resource tags.
  DeploymentStacksWhatIfResultsAtSubscriptionArgs({
    this.deploymentStacksWhatIfResultName,
    this.location,
    this.properties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentStacksWhatIfResultName': ?deploymentStacksWhatIfResultName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<DeploymentStacksWhatIfResultProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory DeploymentStacksWhatIfResultsAtSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentStacksWhatIfResultsAtSubscriptionArgs(
      deploymentStacksWhatIfResultName: map['deploymentStacksWhatIfResultName'] == null ? null : (map['deploymentStacksWhatIfResultName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      properties: map['properties'] == null ? null : (DeploymentStacksWhatIfResultProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

