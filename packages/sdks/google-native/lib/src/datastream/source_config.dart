// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_source_config.dart';
import 'oracle_source_config.dart';
import 'postgresql_source_config.dart';

/// The configuration of the stream source.
class SourceConfig {
  /// MySQL data source configuration.
  final pulumi.Input<MysqlSourceConfig>? mysqlSourceConfig;

  /// Oracle data source configuration.
  final pulumi.Input<OracleSourceConfig>? oracleSourceConfig;

  /// PostgreSQL data source configuration.
  final pulumi.Input<PostgresqlSourceConfig>? postgresqlSourceConfig;

  /// Source connection profile resoource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  final pulumi.Input<String> sourceConnectionProfile;

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
      'mysqlSourceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            MysqlSourceConfig,
            Map<String, dynamic>
          >(mysqlSourceConfig, (value) => value.toMap()),
      'oracleSourceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            OracleSourceConfig,
            Map<String, dynamic>
          >(oracleSourceConfig, (value) => value.toMap()),
      'postgresqlSourceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PostgresqlSourceConfig,
            Map<String, dynamic>
          >(postgresqlSourceConfig, (value) => value.toMap()),
      'sourceConnectionProfile': sourceConnectionProfile,
    };
  }

  factory SourceConfig.fromMap(Map<String, dynamic> map) {
    return SourceConfig(
      mysqlSourceConfig: (() {
        final guardedValue = map['mysqlSourceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MysqlSourceConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      oracleSourceConfig: (() {
        final guardedValue = map['oracleSourceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OracleSourceConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      postgresqlSourceConfig: (() {
        final guardedValue = map['postgresqlSourceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PostgresqlSourceConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sourceConnectionProfile: pulumi.Input.fromValue(
        map['sourceConnectionProfile'] as String,
      ),
    );
  }
}
