// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableConstraintsForeignKeysItemReferencedTable {
  final pulumi.Input<String>? datasetId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? tableId;

  /// Creates a new [TableConstraintsForeignKeysItemReferencedTable].
  /// [datasetId] Optional.
  /// [project] Optional.
  /// [tableId] Optional.
  TableConstraintsForeignKeysItemReferencedTable({
    this.datasetId,
    this.project,
    this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': ?datasetId,
      'project': ?project,
      'tableId': ?tableId,
    };
  }

  factory TableConstraintsForeignKeysItemReferencedTable.fromMap(Map<String, dynamic> map) {
    return TableConstraintsForeignKeysItemReferencedTable(
      datasetId: map['datasetId'] == null ? null : (map['datasetId']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      tableId: map['tableId'] == null ? null : (map['tableId']! as String).input(),
    );
  }
}

