// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DmlStatisticsResponse {
  /// Number of deleted Rows. populated by DML DELETE, MERGE and TRUNCATE statements.
  final pulumi.Input<String> deletedRowCount;
  /// Number of inserted Rows. Populated by DML INSERT and MERGE statements.
  final pulumi.Input<String> insertedRowCount;
  /// Number of updated Rows. Populated by DML UPDATE and MERGE statements.
  final pulumi.Input<String> updatedRowCount;

  /// Creates a new [DmlStatisticsResponse].
  /// [deletedRowCount] Number of deleted Rows. populated by DML DELETE, MERGE and TRUNCATE statements.
  /// [insertedRowCount] Number of inserted Rows. Populated by DML INSERT and MERGE statements.
  /// [updatedRowCount] Number of updated Rows. Populated by DML UPDATE and MERGE statements.
  DmlStatisticsResponse({
    required this.deletedRowCount,
    required this.insertedRowCount,
    required this.updatedRowCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletedRowCount': deletedRowCount,
      'insertedRowCount': insertedRowCount,
      'updatedRowCount': updatedRowCount,
    };
  }

  factory DmlStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return DmlStatisticsResponse(
      deletedRowCount: (map['deletedRowCount'] as String).input(),
      insertedRowCount: (map['insertedRowCount'] as String).input(),
      updatedRowCount: (map['updatedRowCount'] as String).input(),
    );
  }
}

