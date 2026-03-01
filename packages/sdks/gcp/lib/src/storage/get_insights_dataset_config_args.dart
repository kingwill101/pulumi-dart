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
  final pulumi.Input<String>? project;

  /// Creates a new [GetInsightsDatasetConfigArgs].
  /// [datasetConfigId] The user-defined ID of the DatasetConfig
  /// [location] The location of the Dataset Config.
  /// [project] The name of the GCP project in which dataset config exists. Can be configured through config as well.
  GetInsightsDatasetConfigArgs({
    required pulumi.Output<String> datasetConfigId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      datasetConfigId = pulumi.Input.asInput<String>(datasetConfigId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetConfigId': datasetConfigId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetInsightsDatasetConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetInsightsDatasetConfigArgs(
      datasetConfigId: pulumi.Output.create<String>(map['datasetConfigId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

