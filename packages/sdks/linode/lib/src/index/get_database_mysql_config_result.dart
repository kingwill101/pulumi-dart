// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_database_mysql_config_binlog_retention_period.dart';
import 'get_database_mysql_config_mysql.dart';

/// Result data returned by getDatabaseMysqlConfig.
class GetDatabaseMysqlConfigResult {
  final List<GetDatabaseMysqlConfigBinlogRetentionPeriod> binlogRetentionPeriods;
  final String id;
  final List<GetDatabaseMysqlConfigMysql> mysqls;

  /// Creates a new [GetDatabaseMysqlConfigResult].
  /// [binlogRetentionPeriods] Required.
  /// [id] Required.
  /// [mysqls] Required.
  GetDatabaseMysqlConfigResult({
    required this.binlogRetentionPeriods,
    required this.id,
    required this.mysqls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'binlogRetentionPeriods': pulumi.Input.encodeList<GetDatabaseMysqlConfigBinlogRetentionPeriod, Map<String, dynamic>>(binlogRetentionPeriods, (value) => value.toMap()),
      'id': id,
      'mysqls': pulumi.Input.encodeList<GetDatabaseMysqlConfigMysql, Map<String, dynamic>>(mysqls, (value) => value.toMap()),
    };
  }

  factory GetDatabaseMysqlConfigResult.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigResult(
      binlogRetentionPeriods: pulumi.Input.decodeList<GetDatabaseMysqlConfigBinlogRetentionPeriod>(map['binlogRetentionPeriods']!, (value) => GetDatabaseMysqlConfigBinlogRetentionPeriod.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      mysqls: pulumi.Input.decodeList<GetDatabaseMysqlConfigMysql>(map['mysqls']!, (value) => GetDatabaseMysqlConfigMysql.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

