// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';

/// {@template pulumi_networkcloud_metrics_configuration_args_doc}
/// The set of arguments for MetricsConfiguration.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_metrics_configuration_args_doc}
class MetricsConfigurationArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The interval in minutes by which metrics will be collected.
  final pulumi.Input<double> collectionInterval;
  /// The list of metric names that have been chosen to be enabled in addition to the core set of enabled metrics.
  final pulumi.Input<List<String>>? enabledMetrics;
  /// The extended location of the cluster associated with the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the metrics configuration for the cluster.
  final pulumi.Input<String>? metricsConfigurationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MetricsConfigurationArgs].
  /// [clusterName] The name of the cluster.
  /// [collectionInterval] The interval in minutes by which metrics will be collected.
  /// [enabledMetrics] The list of metric names that have been chosen to be enabled in addition to the core set of enabled metrics.
  /// [extendedLocation] The extended location of the cluster associated with the resource.
  /// [location] The geo-location where the resource lives
  /// [metricsConfigurationName] The name of the metrics configuration for the cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  MetricsConfigurationArgs({
    required this.clusterName,
    required this.collectionInterval,
    this.enabledMetrics,
    required this.extendedLocation,
    this.location,
    this.metricsConfigurationName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'collectionInterval': collectionInterval,
      'enabledMetrics': ?enabledMetrics,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'metricsConfigurationName': ?metricsConfigurationName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory MetricsConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return MetricsConfigurationArgs(
      clusterName: (map['clusterName'] as String).input(),
      collectionInterval: (map['collectionInterval'] as double).input(),
      enabledMetrics: map['enabledMetrics'] == null ? null : ((map['enabledMetrics'] as List).cast<String>()).input(),
      extendedLocation: (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      metricsConfigurationName: map['metricsConfigurationName'] == null ? null : (map['metricsConfigurationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

