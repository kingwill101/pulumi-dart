// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigActionExportDataProfileTable {
  /// Dataset Id of the table
  final pulumi.Input<String>? datasetId;
  /// The Google Cloud Platform project ID of the project containing the table. If omitted, the project ID is inferred from the API call.
  final pulumi.Input<String>? projectId;
  /// Name of the table
  final pulumi.Input<String>? tableId;

  /// Creates a new [PreventionDiscoveryConfigActionExportDataProfileTable].
  /// [datasetId] Dataset Id of the table
  /// [projectId] The Google Cloud Platform project ID of the project containing the table. If omitted, the project ID is inferred from the API call.
  /// [tableId] Name of the table
  PreventionDiscoveryConfigActionExportDataProfileTable({
    this.datasetId,
    this.projectId,
    this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
      'projectId': ?projectId,
      'tableId': ?tableId,
    };
  }

  factory PreventionDiscoveryConfigActionExportDataProfileTable.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionExportDataProfileTable(
      datasetId: map['datasetId'] == null ? null : (map['datasetId']! as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId']! as String).input(),
      tableId: map['tableId'] == null ? null : (map['tableId']! as String).input(),
    );
  }
}

