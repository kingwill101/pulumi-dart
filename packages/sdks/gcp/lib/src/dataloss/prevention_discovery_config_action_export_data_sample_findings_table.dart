// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigActionExportDataSampleFindingsTable {
  /// Dataset Id of the table
  final pulumi.Input<String?>? datasetId;
  /// The Google Cloud Platform project ID of the project containing the table. If omitted, the project ID is inferred from the API call.
  final pulumi.Input<String?>? projectId;
  /// Name of the table
  final pulumi.Input<String?>? tableId;

  /// Creates a new [PreventionDiscoveryConfigActionExportDataSampleFindingsTable].
  /// [datasetId] Dataset Id of the table
  /// [projectId] The Google Cloud Platform project ID of the project containing the table. If omitted, the project ID is inferred from the API call.
  /// [tableId] Name of the table
  const PreventionDiscoveryConfigActionExportDataSampleFindingsTable({
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

  factory PreventionDiscoveryConfigActionExportDataSampleFindingsTable.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigActionExportDataSampleFindingsTable(
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableId: (() { final guardedValue = map['tableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
