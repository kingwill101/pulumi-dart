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
  const TableConstraintsForeignKeysItemReferencedTable({
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
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableId: (() { final guardedValue = map['tableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

