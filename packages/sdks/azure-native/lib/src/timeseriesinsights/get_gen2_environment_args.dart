// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_timeseriesinsights_get_gen2_environment_args_doc}
/// Arguments for getGen2Environment.
/// {@endtemplate}
/// {@macro pulumi_timeseriesinsights_get_gen2_environment_args_doc}
class GetGen2EnvironmentArgs {
  /// The name of the Time Series Insights environment associated with the specified resource group.
  final pulumi.Input<String> environmentName;
  /// Setting $expand=status will include the status of the internal services of the environment in the Time Series Insights service.
  final pulumi.Input<String>? expand;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGen2EnvironmentArgs].
  /// [environmentName] The name of the Time Series Insights environment associated with the specified resource group.
  /// [expand] Setting $expand=status will include the status of the internal services of the environment in the Time Series Insights service.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetGen2EnvironmentArgs({
    required this.environmentName,
    this.expand,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGen2EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetGen2EnvironmentArgs(
      environmentName: (map['environmentName'] as String).input(),
      expand: map['expand'] == null ? null : (map['expand']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

