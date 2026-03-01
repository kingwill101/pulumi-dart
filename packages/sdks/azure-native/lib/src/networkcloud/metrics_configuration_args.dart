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
    required pulumi.Output<String> clusterName,
    required pulumi.Output<double> collectionInterval,
    pulumi.Output<List<String>>? enabledMetrics,
    required pulumi.Output<ExtendedLocation> extendedLocation,
    pulumi.Output<String>? location,
    pulumi.Output<String>? metricsConfigurationName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      collectionInterval = pulumi.Input.asInput<double>(collectionInterval),
      enabledMetrics = pulumi.Input.asOptionalInput<List<String>>(enabledMetrics),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      metricsConfigurationName = pulumi.Input.asOptionalInput<String>(metricsConfigurationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      collectionInterval: pulumi.Output.create<double>(map['collectionInterval'] as double),
      enabledMetrics: map['enabledMetrics'] == null ? null : pulumi.Output.create<List<String>>((map['enabledMetrics'] as List).cast<String>()),
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metricsConfigurationName: map['metricsConfigurationName'] == null ? null : pulumi.Output.create<String>(map['metricsConfigurationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

