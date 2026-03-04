// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableTimePartitioning {
  /// Number of milliseconds for which to keep the storage for a partition.
  final pulumi.Input<int> expirationMs;

  /// The field used to determine how to create a time-based partition. If time-based partitioning is enabled without this value, the table is partitioned based on the load time.
  final pulumi.Input<String> field;

  /// If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
  final pulumi.Input<bool> requirePartitionFilter;

  /// The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition per day, hour, month, and year, respectively.
  final pulumi.Input<String> type;

  /// Creates a new [GetTableTimePartitioning].
  /// [expirationMs] Number of milliseconds for which to keep the storage for a partition.
  /// [field] The field used to determine how to create a time-based partition. If time-based partitioning is enabled without this value, the table is partitioned based on the load time.
  /// [requirePartitionFilter] If set to true, queries over this table require a partition filter that can be used for partition elimination to be specified.
  /// [type] The supported types are DAY, HOUR, MONTH, and YEAR, which will generate one partition per day, hour, month, and year, respectively.
  GetTableTimePartitioning({
    required this.expirationMs,
    required this.field,
    required this.requirePartitionFilter,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationMs': expirationMs,
      'field': field,
      'requirePartitionFilter': requirePartitionFilter,
      'type': type,
    };
  }

  factory GetTableTimePartitioning.fromMap(Map<String, dynamic> map) {
    return GetTableTimePartitioning(
      expirationMs: pulumi.Input.fromValue(map['expirationMs'] as int),
      field: pulumi.Input.fromValue(map['field'] as String),
      requirePartitionFilter: pulumi.Input.fromValue(
        map['requirePartitionFilter'] as bool,
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
