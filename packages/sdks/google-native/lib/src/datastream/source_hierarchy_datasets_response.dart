// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_template_response.dart';

/// Destination datasets are created so that hierarchy of the destination data objects matches the source hierarchy.
class SourceHierarchyDatasetsResponse {
  /// The dataset template to use for dynamic dataset creation.
  final pulumi.Input<DatasetTemplateResponse> datasetTemplate;

  /// Creates a new [SourceHierarchyDatasetsResponse].
  /// [datasetTemplate] The dataset template to use for dynamic dataset creation.
  SourceHierarchyDatasetsResponse({
    required this.datasetTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetTemplate': pulumi.Input.mapInputValue<DatasetTemplateResponse, Map<String, dynamic>>(datasetTemplate, (value) => value.toMap()),
    };
  }

  factory SourceHierarchyDatasetsResponse.fromMap(Map<String, dynamic> map) {
    return SourceHierarchyDatasetsResponse(
      datasetTemplate: (DatasetTemplateResponse.fromMap((map['datasetTemplate'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

