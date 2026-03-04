// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterResourceUsageExportConfigBigqueryDestination {
  /// The ID of a BigQuery Dataset.
  final pulumi.Input<String> datasetId;

  /// Creates a new [ClusterResourceUsageExportConfigBigqueryDestination].
  /// [datasetId] The ID of a BigQuery Dataset.
  ClusterResourceUsageExportConfigBigqueryDestination({
    required this.datasetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'datasetId': datasetId};
  }

  factory ClusterResourceUsageExportConfigBigqueryDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterResourceUsageExportConfigBigqueryDestination(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
    );
  }
}
