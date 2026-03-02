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
  TableConstraintsForeignKeysItemReferencedTableResponse({
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
      datasetId: (map['datasetId'] as String).input(),
      project: (map['project'] as String).input(),
      tableId: (map['tableId'] as String).input(),
    );
  }
}

