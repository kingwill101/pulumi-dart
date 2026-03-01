// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_postgresql_config_pg_stat_monitor_enable.dart';
import 'get_database_postgresql_config_pglookout.dart';
import 'get_database_postgresql_config_shared_buffers_percentage.dart';
import 'get_database_postgresql_config_work_mem.dart';

/// Result data returned by getDatabasePostgresqlConfig.
class GetDatabasePostgresqlConfigResult {
  final String id;
  final List<GetDatabasePostgresqlConfigPgStatMonitorEnable> pgStatMonitorEnables;
  final List<GetDatabasePostgresqlConfigPglookout> pglookouts;
  final List<GetDatabasePostgresqlConfigSharedBuffersPercentage> sharedBuffersPercentages;
  final List<GetDatabasePostgresqlConfigWorkMem> workMems;

  /// Creates a new [GetDatabasePostgresqlConfigResult].
  /// [id] Required.
  /// [pgStatMonitorEnables] Required.
  /// [pglookouts] Required.
  /// [sharedBuffersPercentages] Required.
  /// [workMems] Required.
  GetDatabasePostgresqlConfigResult({
    required this.id,
    required this.pgStatMonitorEnables,
    required this.pglookouts,
    required this.sharedBuffersPercentages,
    required this.workMems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'pgStatMonitorEnables': pulumi.Input.encodeList<GetDatabasePostgresqlConfigPgStatMonitorEnable, Map<String, dynamic>>(pgStatMonitorEnables, (value) => value.toMap()),
      'pglookouts': pulumi.Input.encodeList<GetDatabasePostgresqlConfigPglookout, Map<String, dynamic>>(pglookouts, (value) => value.toMap()),
      'sharedBuffersPercentages': pulumi.Input.encodeList<GetDatabasePostgresqlConfigSharedBuffersPercentage, Map<String, dynamic>>(sharedBuffersPercentages, (value) => value.toMap()),
      'workMems': pulumi.Input.encodeList<GetDatabasePostgresqlConfigWorkMem, Map<String, dynamic>>(workMems, (value) => value.toMap()),
    };
  }

  factory GetDatabasePostgresqlConfigResult.fromMap(Map<String, dynamic> map) {
    return GetDatabasePostgresqlConfigResult(
      id: map['id'] as String,
      pgStatMonitorEnables: pulumi.Input.decodeList<GetDatabasePostgresqlConfigPgStatMonitorEnable>(map['pgStatMonitorEnables'], (value) => GetDatabasePostgresqlConfigPgStatMonitorEnable.fromMap((value as Map).cast<String, dynamic>())),
      pglookouts: pulumi.Input.decodeList<GetDatabasePostgresqlConfigPglookout>(map['pglookouts'], (value) => GetDatabasePostgresqlConfigPglookout.fromMap((value as Map).cast<String, dynamic>())),
      sharedBuffersPercentages: pulumi.Input.decodeList<GetDatabasePostgresqlConfigSharedBuffersPercentage>(map['sharedBuffersPercentages'], (value) => GetDatabasePostgresqlConfigSharedBuffersPercentage.fromMap((value as Map).cast<String, dynamic>())),
      workMems: pulumi.Input.decodeList<GetDatabasePostgresqlConfigWorkMem>(map['workMems'], (value) => GetDatabasePostgresqlConfigWorkMem.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

