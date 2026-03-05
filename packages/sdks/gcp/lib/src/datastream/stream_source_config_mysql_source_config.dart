// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mysql_source_config_exclude_objects.dart';
import 'stream_source_config_mysql_source_config_include_objects.dart';

class StreamSourceConfigMysqlSourceConfig {
  /// CDC reader reads from binary logs replication cdc method.
  final pulumi.Input<Map<String, dynamic>>? binaryLogPosition;
  /// MySQL objects to exclude from the stream.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigMysqlSourceConfigExcludeObjects>? excludeObjects;
  /// CDC reader reads from gtid based replication.
  final pulumi.Input<Map<String, dynamic>>? gtid;
  /// MySQL objects to retrieve from the source.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigMysqlSourceConfigIncludeObjects>? includeObjects;
  /// Maximum number of concurrent backfill tasks. The number should be non negative.
  /// If not set (or set to 0), the system's default value will be used.
  final pulumi.Input<int>? maxConcurrentBackfillTasks;
  /// Maximum number of concurrent CDC tasks. The number should be non negative.
  /// If not set (or set to 0), the system's default value will be used.
  final pulumi.Input<int>? maxConcurrentCdcTasks;

  /// Creates a new [StreamSourceConfigMysqlSourceConfig].
  /// [binaryLogPosition] CDC reader reads from binary logs replication cdc method.
  /// [excludeObjects] MySQL objects to exclude from the stream.
  /// [gtid] CDC reader reads from gtid based replication.
  /// [includeObjects] MySQL objects to retrieve from the source.
  /// [maxConcurrentBackfillTasks] Maximum number of concurrent backfill tasks. The number should be non negative.
  /// [maxConcurrentCdcTasks] Maximum number of concurrent CDC tasks. The number should be non negative.
  StreamSourceConfigMysqlSourceConfig({
    this.binaryLogPosition,
    this.excludeObjects,
    this.gtid,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binaryLogPosition': ?binaryLogPosition,
      'excludeObjects': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigMysqlSourceConfigExcludeObjects, Map<String, dynamic>>(excludeObjects, (value) => value.toMap()),
      'gtid': ?gtid,
      'includeObjects': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigMysqlSourceConfigIncludeObjects, Map<String, dynamic>>(includeObjects, (value) => value.toMap()),
      'maxConcurrentBackfillTasks': ?maxConcurrentBackfillTasks,
      'maxConcurrentCdcTasks': ?maxConcurrentCdcTasks,
    };
  }

  factory StreamSourceConfigMysqlSourceConfig.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigMysqlSourceConfig(
      binaryLogPosition: (() { final guardedValue = map['binaryLogPosition']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      excludeObjects: (() { final guardedValue = map['excludeObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfigMysqlSourceConfigExcludeObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gtid: (() { final guardedValue = map['gtid']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      includeObjects: (() { final guardedValue = map['includeObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfigMysqlSourceConfigIncludeObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxConcurrentBackfillTasks: (() { final guardedValue = map['maxConcurrentBackfillTasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxConcurrentCdcTasks: (() { final guardedValue = map['maxConcurrentCdcTasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

