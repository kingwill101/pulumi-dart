// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableConstraintsForeignKeysItemReferencedTableResponse {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> project;
  final pulumi.Input<String> tableId;

  /// Creates a new [TableConstraintsForeignKeysItemReferencedTableResponse].
  /// [datasetId] Required.
  /// [project] Required.
  /// [tableId] Required.
  const TableConstraintsForeignKeysItemReferencedTableResponse({
    required this.datasetId,
    required this.project,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'project': project,
      'tableId': tableId,
    };
  }

  factory TableConstraintsForeignKeysItemReferencedTableResponse.fromMap(Map<String, dynamic> map) {
    return TableConstraintsForeignKeysItemReferencedTableResponse(
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      project: pulumi.Input.fromValue(map['project'] as String),
      tableId: pulumi.Input.fromValue(map['tableId'] as String),
    );
  }
}

