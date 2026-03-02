// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTablesTable {
  /// User-provided table labels, in key/value pairs.
  final pulumi.Input<Map<String, String>> labels;
  /// The name of the table.
  final pulumi.Input<String> tableId;

  /// Creates a new [GetTablesTable].
  /// [labels] User-provided table labels, in key/value pairs.
  /// [tableId] The name of the table.
  GetTablesTable({
    required this.labels,
    required this.tableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': labels,
      'tableId': tableId,
    };
  }

  factory GetTablesTable.fromMap(Map<String, dynamic> map) {
    return GetTablesTable(
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      tableId: (map['tableId'] as String).input(),
    );
  }
}

