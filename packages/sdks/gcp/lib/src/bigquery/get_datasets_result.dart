// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_datasets_dataset.dart';

/// Result data returned by getDatasets.
class GetDatasetsResult {
  /// A list of all retrieved BigQuery datasets. Structure is defined below.
  final List<GetDatasetsDataset> datasets;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? project;

  /// Creates a new [GetDatasetsResult].
  /// [datasets] A list of all retrieved BigQuery datasets. Structure is defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  GetDatasetsResult({
    required this.datasets,
    required this.id,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasets': pulumi.Input.encodeList<GetDatasetsDataset, Map<String, dynamic>>(datasets, (value) => value.toMap()),
      'id': id,
      'project': ?project,
    };
  }

  factory GetDatasetsResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetsResult(
      datasets: pulumi.Input.decodeList<GetDatasetsDataset>(map['datasets'], (value) => GetDatasetsDataset.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      project: map['project'] == null ? null : map['project']! as String,
    );
  }
}

