// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableTableConstraintsForeignKeyReferencedTable {
  /// The ID of the dataset containing this table.
  final pulumi.Input<String> datasetId;
  /// The ID of the project containing this table.
  final pulumi.Input<String> projectId;
  /// The ID of the table. The ID must contain only
  /// letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum
  /// length is 1,024 characters. Certain operations allow suffixing of
  /// the table ID with a partition decorator, such as
  /// sample_table$20190123.
  final pulumi.Input<String> tableId;

  /// Creates a new [TableTableConstraintsForeignKeyReferencedTable].
  /// [datasetId] The ID of the dataset containing this table.
  /// [projectId] The ID of the project containing this table.
  /// [tableId] The ID of the table. The ID must contain only
  TableTableConstraintsForeignKeyReferencedTable({
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

  factory TableTableConstraintsForeignKeyReferencedTable.fromMap(Map<String, dynamic> map) {
    return TableTableConstraintsForeignKeyReferencedTable(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}

