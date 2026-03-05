// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable {
  /// The dataset ID of the table.
  final pulumi.Input<String> datasetId;
  /// The Google Cloud Platform project ID of the project containing the table.
  final pulumi.Input<String> projectId;
  /// The name of the table.
  final pulumi.Input<String> tableId;

  /// Creates a new [PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable].
  /// [datasetId] The dataset ID of the table.
  /// [projectId] The Google Cloud Platform project ID of the project containing the table.
  /// [tableId] The name of the table.
  PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable({
    required this.datasetId,
    required this.projectId,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'projectId': projectId,
      'tableId': tableId,
    };
  }

  factory PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable.fromMap(Map<String, dynamic> map) {
    return PreventionStoredInfoTypeLargeCustomDictionaryBigQueryFieldTable(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}

