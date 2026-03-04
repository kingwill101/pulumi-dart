// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters for using BigQuery as the destination of resource usage export.
class BigQueryDestinationResponse {
  /// The ID of a BigQuery Dataset.
  final pulumi.Input<String> datasetId;

  /// Creates a new [BigQueryDestinationResponse].
  /// [datasetId] The ID of a BigQuery Dataset.
  BigQueryDestinationResponse({required this.datasetId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'datasetId': datasetId};
  }

  factory BigQueryDestinationResponse.fromMap(Map<String, dynamic> map) {
    return BigQueryDestinationResponse(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
    );
  }
}
