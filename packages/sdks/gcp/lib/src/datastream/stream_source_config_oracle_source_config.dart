// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_oracle_source_config_exclude_objects.dart';
import 'stream_source_config_oracle_source_config_include_objects.dart';

class StreamSourceConfigOracleSourceConfig {
  /// Configuration to drop large object values.
  final pulumi.Input<Map<String, dynamic>>? dropLargeObjects;
  /// Oracle objects to exclude from the stream.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigOracleSourceConfigExcludeObjects>? excludeObjects;
  /// Oracle objects to retrieve from the source.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigOracleSourceConfigIncludeObjects>? includeObjects;
  /// Maximum number of concurrent backfill tasks. The number should be non negative.
  /// If not set (or set to 0), the system's default value will be used.
  final pulumi.Input<int>? maxConcurrentBackfillTasks;
  /// Maximum number of concurrent CDC tasks. The number should be non negative.
  /// If not set (or set to 0), the system's default value will be used.
  final pulumi.Input<int>? maxConcurrentCdcTasks;
  /// Configuration to drop large object values.
  final pulumi.Input<Map<String, dynamic>>? streamLargeObjects;

  /// Creates a new [StreamSourceConfigOracleSourceConfig].
  /// [dropLargeObjects] Configuration to drop large object values.
  /// [excludeObjects] Oracle objects to exclude from the stream.
  /// [includeObjects] Oracle objects to retrieve from the source.
  /// [maxConcurrentBackfillTasks] Maximum number of concurrent backfill tasks. The number should be non negative.
  /// [maxConcurrentCdcTasks] Maximum number of concurrent CDC tasks. The number should be non negative.
  /// [streamLargeObjects] Configuration to drop large object values.
  StreamSourceConfigOracleSourceConfig({
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
      'excludeObjects': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigOracleSourceConfigExcludeObjects, Map<String, dynamic>>(excludeObjects, (value) => value.toMap()),
      'includeObjects': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigOracleSourceConfigIncludeObjects, Map<String, dynamic>>(includeObjects, (value) => value.toMap()),
      'maxConcurrentBackfillTasks': ?maxConcurrentBackfillTasks,
      'maxConcurrentCdcTasks': ?maxConcurrentCdcTasks,
      'streamLargeObjects': ?streamLargeObjects,
    };
  }

  factory StreamSourceConfigOracleSourceConfig.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigOracleSourceConfig(
      dropLargeObjects: map['dropLargeObjects'] == null ? null : ((map['dropLargeObjects']! as Map).cast<String, dynamic>()).input(),
      excludeObjects: map['excludeObjects'] == null ? null : (StreamSourceConfigOracleSourceConfigExcludeObjects.fromMap((map['excludeObjects']! as Map).cast<String, dynamic>())).input(),
      includeObjects: map['includeObjects'] == null ? null : (StreamSourceConfigOracleSourceConfigIncludeObjects.fromMap((map['includeObjects']! as Map).cast<String, dynamic>())).input(),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] == null ? null : (map['maxConcurrentBackfillTasks']! as int).input(),
      maxConcurrentCdcTasks: map['maxConcurrentCdcTasks'] == null ? null : (map['maxConcurrentCdcTasks']! as int).input(),
      streamLargeObjects: map['streamLargeObjects'] == null ? null : ((map['streamLargeObjects']! as Map).cast<String, dynamic>()).input(),
    );
  }
}

