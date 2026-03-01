// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_source_config.dart';
import 'oracle_source_config.dart';
import 'postgresql_source_config.dart';

/// The configuration of the stream source.
class SourceConfig {
  /// MySQL data source configuration.
  final MysqlSourceConfig? mysqlSourceConfig;
  /// Oracle data source configuration.
  final OracleSourceConfig? oracleSourceConfig;
  /// PostgreSQL data source configuration.
  final PostgresqlSourceConfig? postgresqlSourceConfig;
  /// Source connection profile resoource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  final String sourceConnectionProfile;

  /// Creates a new [SourceConfig].
  /// [mysqlSourceConfig] MySQL data source configuration.
  /// [oracleSourceConfig] Oracle data source configuration.
  /// [postgresqlSourceConfig] PostgreSQL data source configuration.
  /// [sourceConnectionProfile] Source connection profile resoource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  SourceConfig({
    this.mysqlSourceConfig,
    this.oracleSourceConfig,
    this.postgresqlSourceConfig,
    required this.sourceConnectionProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlSourceConfig': ?mysqlSourceConfig == null ? null : mysqlSourceConfig!.toMap(),
      'oracleSourceConfig': ?oracleSourceConfig == null ? null : oracleSourceConfig!.toMap(),
      'postgresqlSourceConfig': ?postgresqlSourceConfig == null ? null : postgresqlSourceConfig!.toMap(),
      'sourceConnectionProfile': sourceConnectionProfile,
    };
  }

  factory SourceConfig.fromMap(Map<String, dynamic> map) {
    return SourceConfig(
      mysqlSourceConfig: map['mysqlSourceConfig'] == null ? null : MysqlSourceConfig.fromMap((map['mysqlSourceConfig'] as Map).cast<String, dynamic>()),
      oracleSourceConfig: map['oracleSourceConfig'] == null ? null : OracleSourceConfig.fromMap((map['oracleSourceConfig'] as Map).cast<String, dynamic>()),
      postgresqlSourceConfig: map['postgresqlSourceConfig'] == null ? null : PostgresqlSourceConfig.fromMap((map['postgresqlSourceConfig'] as Map).cast<String, dynamic>()),
      sourceConnectionProfile: map['sourceConnectionProfile'] as String,
    );
  }
}

