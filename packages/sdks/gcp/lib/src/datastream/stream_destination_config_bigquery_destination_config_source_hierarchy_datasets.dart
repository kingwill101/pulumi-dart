// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_destination_config_bigquery_destination_config_source_hierarchy_datasets_dataset_template.dart';

class StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets {
  /// Dataset template used for dynamic dataset creation.
  /// Structure is documented below.
  final pulumi.Input<StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplate> datasetTemplate;
  /// Optional. The project id of the BigQuery dataset. If not specified, the project will be inferred from the stream resource.
  final pulumi.Input<String>? projectId;

  /// Creates a new [StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets].
  /// [datasetTemplate] Dataset template used for dynamic dataset creation.
  /// [projectId] Optional. The project id of the BigQuery dataset. If not specified, the project will be inferred from the stream resource.
  StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets({
    required this.datasetTemplate,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetTemplate': pulumi.Input.mapInputValue<StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplate, Map<String, dynamic>>(datasetTemplate, (value) => value.toMap()),
      'projectId': ?projectId,
    };
  }

  factory StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets.fromMap(Map<String, dynamic> map) {
    return StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasets(
      datasetTemplate: (StreamDestinationConfigBigqueryDestinationConfigSourceHierarchyDatasetsDatasetTemplate.fromMap((map['datasetTemplate'] as Map).cast<String, dynamic>())).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
    );
  }
}

