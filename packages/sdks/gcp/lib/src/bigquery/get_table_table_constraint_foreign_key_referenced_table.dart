// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableTableConstraintForeignKeyReferencedTable {
  /// The dataset ID.
  final pulumi.Input<String> datasetId;
  /// The ID of the project containing this table.
  final pulumi.Input<String> projectId;
  /// The table ID.
  final pulumi.Input<String> tableId;

  /// Creates a new [GetTableTableConstraintForeignKeyReferencedTable].
  /// [datasetId] The dataset ID.
  /// [projectId] The ID of the project containing this table.
  /// [tableId] The table ID.
  GetTableTableConstraintForeignKeyReferencedTable({
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

  factory GetTableTableConstraintForeignKeyReferencedTable.fromMap(Map<String, dynamic> map) {
    return GetTableTableConstraintForeignKeyReferencedTable(
      datasetId: (map['datasetId'] as String).input(),
      projectId: (map['projectId'] as String).input(),
      tableId: (map['tableId'] as String).input(),
    );
  }
}

