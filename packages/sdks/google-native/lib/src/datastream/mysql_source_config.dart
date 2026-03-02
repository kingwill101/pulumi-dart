// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_rdbms.dart';

/// MySQL source configuration
class MysqlSourceConfig {
  /// MySQL objects to exclude from the stream.
  final pulumi.Input<MysqlRdbms>? excludeObjects;
  /// MySQL objects to retrieve from the source.
  final pulumi.Input<MysqlRdbms>? includeObjects;
  /// Maximum number of concurrent backfill tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  final pulumi.Input<int>? maxConcurrentBackfillTasks;
  /// Maximum number of concurrent CDC tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  final pulumi.Input<int>? maxConcurrentCdcTasks;

  /// Creates a new [MysqlSourceConfig].
  /// [excludeObjects] MySQL objects to exclude from the stream.
  /// [includeObjects] MySQL objects to retrieve from the source.
  /// [maxConcurrentBackfillTasks] Maximum number of concurrent backfill tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  /// [maxConcurrentCdcTasks] Maximum number of concurrent CDC tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  MysqlSourceConfig({
    this.excludeObjects,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeObjects': ?pulumi.Input.mapOptionalInputValue<MysqlRdbms, Map<String, dynamic>>(excludeObjects, (value) => value.toMap()),
      'includeObjects': ?pulumi.Input.mapOptionalInputValue<MysqlRdbms, Map<String, dynamic>>(includeObjects, (value) => value.toMap()),
      'maxConcurrentBackfillTasks': ?maxConcurrentBackfillTasks,
      'maxConcurrentCdcTasks': ?maxConcurrentCdcTasks,
    };
  }

  factory MysqlSourceConfig.fromMap(Map<String, dynamic> map) {
    return MysqlSourceConfig(
      excludeObjects: map['excludeObjects'] == null ? null : (MysqlRdbms.fromMap((map['excludeObjects']! as Map).cast<String, dynamic>())).input(),
      includeObjects: map['includeObjects'] == null ? null : (MysqlRdbms.fromMap((map['includeObjects']! as Map).cast<String, dynamic>())).input(),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] == null ? null : (map['maxConcurrentBackfillTasks']! as int).input(),
      maxConcurrentCdcTasks: map['maxConcurrentCdcTasks'] == null ? null : (map['maxConcurrentCdcTasks']! as int).input(),
    );
  }
}

