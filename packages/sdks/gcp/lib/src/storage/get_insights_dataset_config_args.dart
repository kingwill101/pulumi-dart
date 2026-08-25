// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_insights_dataset_config_get_insights_dataset_config_args_doc}
/// Arguments for getInsightsDatasetConfig.
/// {@endtemplate}
/// {@macro pulumi_storage_get_insights_dataset_config_get_insights_dataset_config_args_doc}
class GetInsightsDatasetConfigArgs {
  /// The user-defined ID of the DatasetConfig
  final pulumi.Input<String> datasetConfigId;
  /// The location of the Dataset Config.
  final pulumi.Input<String> location;
  /// The name of the GCP project in which dataset config exists. Can be configured through config as well.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetInsightsDatasetConfigArgs].
  /// [datasetConfigId] The user-defined ID of the DatasetConfig
  /// [location] The location of the Dataset Config.
  /// [project] The name of the GCP project in which dataset config exists. Can be configured through config as well.
  const GetInsightsDatasetConfigArgs({
    required this.datasetConfigId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetConfigId': datasetConfigId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetInsightsDatasetConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetInsightsDatasetConfigArgs(
      datasetConfigId: pulumi.Input.fromValue(map['datasetConfigId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
