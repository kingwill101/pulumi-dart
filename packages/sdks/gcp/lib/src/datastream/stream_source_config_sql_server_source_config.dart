// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_sql_server_source_config_exclude_objects.dart';
import 'stream_source_config_sql_server_source_config_include_objects.dart';

class StreamSourceConfigSqlServerSourceConfig {
  /// CDC reader reads from change tables.
  final pulumi.Input<Map<String, dynamic>>? changeTables;
  /// SQL Server objects to exclude from the stream.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigSqlServerSourceConfigExcludeObjects>? excludeObjects;
  /// SQL Server objects to retrieve from the source.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigSqlServerSourceConfigIncludeObjects>? includeObjects;
  /// Max concurrent backfill tasks.
  final pulumi.Input<int>? maxConcurrentBackfillTasks;
  /// Max concurrent CDC tasks.
  final pulumi.Input<int>? maxConcurrentCdcTasks;
  /// CDC reader reads from transaction logs.
  final pulumi.Input<Map<String, dynamic>>? transactionLogs;

  /// Creates a new [StreamSourceConfigSqlServerSourceConfig].
  /// [changeTables] CDC reader reads from change tables.
  /// [excludeObjects] SQL Server objects to exclude from the stream.
  /// [includeObjects] SQL Server objects to retrieve from the source.
  /// [maxConcurrentBackfillTasks] Max concurrent backfill tasks.
  /// [maxConcurrentCdcTasks] Max concurrent CDC tasks.
  /// [transactionLogs] CDC reader reads from transaction logs.
  const StreamSourceConfigSqlServerSourceConfig({
    this.changeTables,
    this.excludeObjects,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
    this.transactionLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeTables': ?changeTables,
      'excludeObjects': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigSqlServerSourceConfigExcludeObjects, Map<String, dynamic>>(excludeObjects, (value) => value.toMap()),
      'includeObjects': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigSqlServerSourceConfigIncludeObjects, Map<String, dynamic>>(includeObjects, (value) => value.toMap()),
      'maxConcurrentBackfillTasks': ?maxConcurrentBackfillTasks,
      'maxConcurrentCdcTasks': ?maxConcurrentCdcTasks,
      'transactionLogs': ?transactionLogs,
    };
  }

  factory StreamSourceConfigSqlServerSourceConfig.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSqlServerSourceConfig(
      changeTables: (() { final guardedValue = map['changeTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      excludeObjects: (() { final guardedValue = map['excludeObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfigSqlServerSourceConfigExcludeObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includeObjects: (() { final guardedValue = map['includeObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfigSqlServerSourceConfigIncludeObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxConcurrentBackfillTasks: (() { final guardedValue = map['maxConcurrentBackfillTasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxConcurrentCdcTasks: (() { final guardedValue = map['maxConcurrentCdcTasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      transactionLogs: (() { final guardedValue = map['transactionLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
