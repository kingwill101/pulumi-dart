// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_metrics_configuration_args_doc}
/// Arguments for getMetricsConfiguration.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_metrics_configuration_args_doc}
class GetMetricsConfigurationArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the metrics configuration for the cluster.
  final pulumi.Input<String> metricsConfigurationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMetricsConfigurationArgs].
  /// [clusterName] The name of the cluster.
  /// [metricsConfigurationName] The name of the metrics configuration for the cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMetricsConfigurationArgs({
    required this.clusterName,
    required this.metricsConfigurationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'metricsConfigurationName': metricsConfigurationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMetricsConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetMetricsConfigurationArgs(
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      metricsConfigurationName: pulumi.Input.fromValue(map['metricsConfigurationName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

