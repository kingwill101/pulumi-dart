// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterResourceUsageExportConfigBigqueryDestination {
  /// The ID of a BigQuery Dataset.
  final pulumi.Input<String> datasetId;

  /// Creates a new [GetClusterResourceUsageExportConfigBigqueryDestination].
  /// [datasetId] The ID of a BigQuery Dataset.
  const GetClusterResourceUsageExportConfigBigqueryDestination({
    required this.datasetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
    };
  }

  factory GetClusterResourceUsageExportConfigBigqueryDestination.fromMap(Map<String, dynamic> map) {
    return GetClusterResourceUsageExportConfigBigqueryDestination(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
    );
  }
}
