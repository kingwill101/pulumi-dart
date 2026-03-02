// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference {
  /// Dataset ID of the table.
  final pulumi.Input<String> datasetId;
  /// Name of the table.
  final pulumi.Input<String> tableId;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference].
  /// [datasetId] Dataset ID of the table.
  /// [tableId] Name of the table.
  PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference({
    required this.datasetId,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'tableId': tableId,
    };
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference(
      datasetId: (map['datasetId'] as String).input(),
      tableId: (map['tableId'] as String).input(),
    );
  }
}

