// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_source_config_response.dart';
import 'oracle_source_config_response.dart';
import 'postgresql_source_config_response.dart';

/// The configuration of the stream source.
class SourceConfigResponse {
  /// MySQL data source configuration.
  final pulumi.Input<MysqlSourceConfigResponse> mysqlSourceConfig;
  /// Oracle data source configuration.
  final pulumi.Input<OracleSourceConfigResponse> oracleSourceConfig;
  /// PostgreSQL data source configuration.
  final pulumi.Input<PostgresqlSourceConfigResponse> postgresqlSourceConfig;
  /// Source connection profile resoource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  final pulumi.Input<String> sourceConnectionProfile;

  /// Creates a new [SourceConfigResponse].
  /// [mysqlSourceConfig] MySQL data source configuration.
  /// [oracleSourceConfig] Oracle data source configuration.
  /// [postgresqlSourceConfig] PostgreSQL data source configuration.
  /// [sourceConnectionProfile] Source connection profile resoource. Format: `projects/{project}/locations/{location}/connectionProfiles/{name}`
  SourceConfigResponse({
    required this.mysqlSourceConfig,
    required this.oracleSourceConfig,
    required this.postgresqlSourceConfig,
    required this.sourceConnectionProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlSourceConfig': pulumi.Input.mapInputValue<MysqlSourceConfigResponse, Map<String, dynamic>>(mysqlSourceConfig, (value) => value.toMap()),
      'oracleSourceConfig': pulumi.Input.mapInputValue<OracleSourceConfigResponse, Map<String, dynamic>>(oracleSourceConfig, (value) => value.toMap()),
      'postgresqlSourceConfig': pulumi.Input.mapInputValue<PostgresqlSourceConfigResponse, Map<String, dynamic>>(postgresqlSourceConfig, (value) => value.toMap()),
      'sourceConnectionProfile': sourceConnectionProfile,
    };
  }

  factory SourceConfigResponse.fromMap(Map<String, dynamic> map) {
    return SourceConfigResponse(
      mysqlSourceConfig: (MysqlSourceConfigResponse.fromMap((map['mysqlSourceConfig'] as Map).cast<String, dynamic>())).input(),
      oracleSourceConfig: (OracleSourceConfigResponse.fromMap((map['oracleSourceConfig'] as Map).cast<String, dynamic>())).input(),
      postgresqlSourceConfig: (PostgresqlSourceConfigResponse.fromMap((map['postgresqlSourceConfig'] as Map).cast<String, dynamic>())).input(),
      sourceConnectionProfile: (map['sourceConnectionProfile'] as String).input(),
    );
  }
}

