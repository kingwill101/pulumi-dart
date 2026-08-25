// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference {
  /// Dataset ID of the table.
  final pulumi.Input<String> datasetId;
  /// The Google Cloud project ID of the project containing the table.
  /// If omitted, the project ID is inferred from the parent project.
  /// This field is required if the parent resource is an organization.
  final pulumi.Input<String?>? projectId;
  /// Name of the table.
  final pulumi.Input<String> tableId;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference].
  /// [datasetId] Dataset ID of the table.
  /// [projectId] The Google Cloud project ID of the project containing the table.
  /// [tableId] Name of the table.
  const PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference({
    required this.datasetId,
    this.projectId,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'projectId': ?projectId,
      'tableId': tableId,
    };
  }

  factory PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTargetFilterTableReference(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}
