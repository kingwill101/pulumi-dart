// ignore_for_file: unused_element, unnecessary_cast


class ClusterResourceUsageExportConfigBigqueryDestination {
  /// The ID of a BigQuery Dataset.
  final String datasetId;

  /// Creates a new [ClusterResourceUsageExportConfigBigqueryDestination].
  /// [datasetId] The ID of a BigQuery Dataset.
  ClusterResourceUsageExportConfigBigqueryDestination({
    required this.datasetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
    };
  }

  factory ClusterResourceUsageExportConfigBigqueryDestination.fromMap(Map<String, dynamic> map) {
    return ClusterResourceUsageExportConfigBigqueryDestination(
      datasetId: map['datasetId'] as String,
    );
  }
}

