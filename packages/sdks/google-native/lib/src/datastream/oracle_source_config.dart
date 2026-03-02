// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oracle_rdbms.dart';

/// Oracle data source configuration
class OracleSourceConfig {
  /// Drop large object values.
  final pulumi.Input<Map<String, dynamic>>? dropLargeObjects;
  /// Oracle objects to exclude from the stream.
  final pulumi.Input<OracleRdbms>? excludeObjects;
  /// Oracle objects to include in the stream.
  final pulumi.Input<OracleRdbms>? includeObjects;
  /// Maximum number of concurrent backfill tasks. The number should be non-negative. If not set (or set to 0), the system's default value is used.
  final pulumi.Input<int>? maxConcurrentBackfillTasks;
  /// Maximum number of concurrent CDC tasks. The number should be non-negative. If not set (or set to 0), the system's default value is used.
  final pulumi.Input<int>? maxConcurrentCdcTasks;
  /// Stream large object values. NOTE: This feature is currently experimental.
  final pulumi.Input<Map<String, dynamic>>? streamLargeObjects;

  /// Creates a new [OracleSourceConfig].
  /// [dropLargeObjects] Drop large object values.
  /// [excludeObjects] Oracle objects to exclude from the stream.
  /// [includeObjects] Oracle objects to include in the stream.
  /// [maxConcurrentBackfillTasks] Maximum number of concurrent backfill tasks. The number should be non-negative. If not set (or set to 0), the system's default value is used.
  /// [maxConcurrentCdcTasks] Maximum number of concurrent CDC tasks. The number should be non-negative. If not set (or set to 0), the system's default value is used.
  /// [streamLargeObjects] Stream large object values. NOTE: This feature is currently experimental.
  OracleSourceConfig({
    this.dropLargeObjects,
    this.excludeObjects,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
    this.streamLargeObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropLargeObjects': ?dropLargeObjects,
      'excludeObjects': ?pulumi.Input.mapOptionalInputValue<OracleRdbms, Map<String, dynamic>>(excludeObjects, (value) => value.toMap()),
      'includeObjects': ?pulumi.Input.mapOptionalInputValue<OracleRdbms, Map<String, dynamic>>(includeObjects, (value) => value.toMap()),
      'maxConcurrentBackfillTasks': ?maxConcurrentBackfillTasks,
      'maxConcurrentCdcTasks': ?maxConcurrentCdcTasks,
      'streamLargeObjects': ?streamLargeObjects,
    };
  }

  factory OracleSourceConfig.fromMap(Map<String, dynamic> map) {
    return OracleSourceConfig(
      dropLargeObjects: map['dropLargeObjects'] == null ? null : ((map['dropLargeObjects'] as Map).cast<String, dynamic>()).input(),
      excludeObjects: map['excludeObjects'] == null ? null : (OracleRdbms.fromMap((map['excludeObjects'] as Map).cast<String, dynamic>())).input(),
      includeObjects: map['includeObjects'] == null ? null : (OracleRdbms.fromMap((map['includeObjects'] as Map).cast<String, dynamic>())).input(),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] == null ? null : (map['maxConcurrentBackfillTasks'] as int).input(),
      maxConcurrentCdcTasks: map['maxConcurrentCdcTasks'] == null ? null : (map['maxConcurrentCdcTasks'] as int).input(),
      streamLargeObjects: map['streamLargeObjects'] == null ? null : ((map['streamLargeObjects'] as Map).cast<String, dynamic>()).input(),
    );
  }
}

