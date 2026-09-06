// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_stacks_what_if_result_properties.dart';

/// {@template pulumi_resources_deployment_stacks_what_if_results_at_subscription_args_doc}
/// The set of arguments for DeploymentStacksWhatIfResultsAtSubscription.
/// {@endtemplate}
/// {@macro pulumi_resources_deployment_stacks_what_if_results_at_subscription_args_doc}
class DeploymentStacksWhatIfResultsAtSubscriptionArgs {
  /// Name of the deployment stack what-if result.
  final pulumi.Input<String?>? deploymentStacksWhatIfResultName;
  /// The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  final pulumi.Input<String?>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<DeploymentStacksWhatIfResultProperties?>? properties;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DeploymentStacksWhatIfResultsAtSubscriptionArgs].
  /// [deploymentStacksWhatIfResultName] Name of the deployment stack what-if result.
  /// [location] The geo-location where the resource lives. Required for subscription and management group scoped stacks. The location is inherited from the resource group for resource group scoped stacks.
  /// [properties] The resource-specific properties for this resource.
  /// [tags] Resource tags.
  const DeploymentStacksWhatIfResultsAtSubscriptionArgs({
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
      deploymentStacksWhatIfResultName: (() { final guardedValue = map['deploymentStacksWhatIfResultName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeploymentStacksWhatIfResultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
