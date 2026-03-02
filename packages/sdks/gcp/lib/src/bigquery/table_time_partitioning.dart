// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableTimePartitioning {
  /// Number of milliseconds for which to keep the
  /// storage for a partition.
  final pulumi.Input<int>? expirationMs;
  /// The field used to determine how to create a time-based
  /// partition. If time-based partitioning is enabled without this value, the
  /// table is partitioned based on the load time.
  final pulumi.Input<String>? field;
  /// If set to true, queries over this table
  /// require a partition filter that can be used for partition elimination to be
  /// specified. `require_partition_filter` is deprecated and will be removed in
  /// a future major release. Use the top level field with the same name instead.
  final pulumi.Input<bool>? requirePartitionFilter;
  /// The supported types are DAY, HOUR, MONTH, and YEAR,
  /// which will generate one partition per day, hour, month, and year, respectively.
  final pulumi.Input<String> type;

  /// Creates a new [TableTimePartitioning].
  /// [expirationMs] Number of milliseconds for which to keep the
  /// [field] The field used to determine how to create a time-based
  /// [requirePartitionFilter] If set to true, queries over this table
  /// [type] The supported types are DAY, HOUR, MONTH, and YEAR,
  TableTimePartitioning({
    this.expirationMs,
    this.field,
    this.requirePartitionFilter,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationMs': ?expirationMs,
      'field': ?field,
      'requirePartitionFilter': ?requirePartitionFilter,
      'type': type,
    };
  }

  factory TableTimePartitioning.fromMap(Map<String, dynamic> map) {
    return TableTimePartitioning(
      expirationMs: map['expirationMs'] == null ? null : (map['expirationMs']! as int).input(),
      field: map['field'] == null ? null : (map['field']! as String).input(),
      requirePartitionFilter: map['requirePartitionFilter'] == null ? null : (map['requirePartitionFilter']! as bool).input(),
      type: (map['type'] as String).input(),
    );
  }
}

