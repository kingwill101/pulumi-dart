// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_datasets_dataset.dart';

/// Result data returned by getDatasets.
class GetDatasetsResult {
  /// A list of all retrieved BigQuery datasets. Structure is defined below.
  final List<GetDatasetsDataset>? datasets;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? project;

  /// Creates a new [GetDatasetsResult].
  /// [datasets] A list of all retrieved BigQuery datasets. Structure is defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  const GetDatasetsResult({
    this.datasets,
    this.id,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasets': ?(() { final guardedValue = datasets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDatasetsDataset, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'project': ?project,
    };
  }

  factory GetDatasetsResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetsResult(
      datasets: (() { final guardedValue = map['datasets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDatasetsDataset>(guardedValue, (value) => GetDatasetsDataset.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
