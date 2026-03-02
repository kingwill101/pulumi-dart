// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTablesTable {
  /// The table name.
  final pulumi.Input<String> objectName;
  /// The parent schema.
  final pulumi.Input<String> schemaName;
  /// The table type as defined in ``information_schema.tables``.
  final pulumi.Input<String> tableType;

  /// Creates a new [GetTablesTable].
  /// [objectName] The table name.
  /// [schemaName] The parent schema.
  /// [tableType] The table type as defined in ``information_schema.tables``.
  GetTablesTable({
    required this.objectName,
    required this.schemaName,
    required this.tableType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectName': objectName,
      'schemaName': schemaName,
      'tableType': tableType,
    };
  }

  factory GetTablesTable.fromMap(Map<String, dynamic> map) {
    return GetTablesTable(
      objectName: (map['objectName'] as String).input(),
      schemaName: (map['schemaName'] as String).input(),
      tableType: (map['tableType'] as String).input(),
    );
  }
}

