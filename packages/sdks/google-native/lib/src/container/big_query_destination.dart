// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters for using BigQuery as the destination of resource usage export.
class BigQueryDestination {
  /// The ID of a BigQuery Dataset.
  final pulumi.Input<String>? datasetId;

  /// Creates a new [BigQueryDestination].
  /// [datasetId] The ID of a BigQuery Dataset.
  const BigQueryDestination({
    this.datasetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
    };
  }

  factory BigQueryDestination.fromMap(Map<String, dynamic> map) {
    return BigQueryDestination(
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
