// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_timeseriesinsights_get_gen1_environment_args_doc}
/// Arguments for getGen1Environment.
/// {@endtemplate}
/// {@macro pulumi_timeseriesinsights_get_gen1_environment_args_doc}
class GetGen1EnvironmentArgs {
  /// The name of the Time Series Insights environment associated with the specified resource group.
  final pulumi.Input<String> environmentName;
  /// Setting $expand=status will include the status of the internal services of the environment in the Time Series Insights service.
  final pulumi.Input<String>? expand;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGen1EnvironmentArgs].
  /// [environmentName] The name of the Time Series Insights environment associated with the specified resource group.
  /// [expand] Setting $expand=status will include the status of the internal services of the environment in the Time Series Insights service.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetGen1EnvironmentArgs({
    required pulumi.Output<String> environmentName,
    pulumi.Output<String>? expand,
    required pulumi.Output<String> resourceGroupName,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      expand = pulumi.Input.asOptionalInput<String>(expand),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGen1EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetGen1EnvironmentArgs(
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

