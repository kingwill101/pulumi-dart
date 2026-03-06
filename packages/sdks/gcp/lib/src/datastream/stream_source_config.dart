// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mongodb_source_config.dart';
import 'stream_source_config_mysql_source_config.dart';
import 'stream_source_config_oracle_source_config.dart';
import 'stream_source_config_postgresql_source_config.dart';
import 'stream_source_config_salesforce_source_config.dart';
import 'stream_source_config_spanner_source_config.dart';
import 'stream_source_config_sql_server_source_config.dart';

class StreamSourceConfig {
  /// MongoDB source configuration.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigMongodbSourceConfig>? mongodbSourceConfig;
  /// MySQL data source configuration.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigMysqlSourceConfig>? mysqlSourceConfig;
  /// MySQL data source configuration.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigOracleSourceConfig>? oracleSourceConfig;
  /// PostgreSQL data source configuration.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigPostgresqlSourceConfig>? postgresqlSourceConfig;
  /// Salesforce data source configuration.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigSalesforceSourceConfig>? salesforceSourceConfig;
  /// Source connection profile resource. Format: projects/{project}/locations/{location}/connectionProfiles/{name}
  final pulumi.Input<String> sourceConnectionProfile;
  /// Spanner data source configuration.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigSpannerSourceConfig>? spannerSourceConfig;
  /// SQL Server data source configuration.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigSqlServerSourceConfig>? sqlServerSourceConfig;

  /// Creates a new [StreamSourceConfig].
  /// [mongodbSourceConfig] MongoDB source configuration.
  /// [mysqlSourceConfig] MySQL data source configuration.
  /// [oracleSourceConfig] MySQL data source configuration.
  /// [postgresqlSourceConfig] PostgreSQL data source configuration.
  /// [salesforceSourceConfig] Salesforce data source configuration.
  /// [sourceConnectionProfile] Source connection profile resource. Format: projects/{project}/locations/{location}/connectionProfiles/{name}
  /// [spannerSourceConfig] Spanner data source configuration.
  /// [sqlServerSourceConfig] SQL Server data source configuration.
  const StreamSourceConfig({
    this.mongodbSourceConfig,
    this.mysqlSourceConfig,
    this.oracleSourceConfig,
    this.postgresqlSourceConfig,
    this.salesforceSourceConfig,
    required this.sourceConnectionProfile,
    this.spannerSourceConfig,
    this.sqlServerSourceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mongodbSourceConfig': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigMongodbSourceConfig, Map<String, dynamic>>(mongodbSourceConfig, (value) => value.toMap()),
      'mysqlSourceConfig': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigMysqlSourceConfig, Map<String, dynamic>>(mysqlSourceConfig, (value) => value.toMap()),
      'oracleSourceConfig': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigOracleSourceConfig, Map<String, dynamic>>(oracleSourceConfig, (value) => value.toMap()),
      'postgresqlSourceConfig': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigPostgresqlSourceConfig, Map<String, dynamic>>(postgresqlSourceConfig, (value) => value.toMap()),
      'salesforceSourceConfig': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigSalesforceSourceConfig, Map<String, dynamic>>(salesforceSourceConfig, (value) => value.toMap()),
      'sourceConnectionProfile': sourceConnectionProfile,
      'spannerSourceConfig': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigSpannerSourceConfig, Map<String, dynamic>>(spannerSourceConfig, (value) => value.toMap()),
      'sqlServerSourceConfig': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigSqlServerSourceConfig, Map<String, dynamic>>(sqlServerSourceConfig, (value) => value.toMap()),
    };
  }

  factory StreamSourceConfig.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfig(
      mongodbSourceConfig: (() { final guardedValue = map['mongodbSourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfigMongodbSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mysqlSourceConfig: (() { final guardedValue = map['mysqlSourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfigMysqlSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oracleSourceConfig: (() { final guardedValue = map['oracleSourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfigOracleSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      postgresqlSourceConfig: (() { final guardedValue = map['postgresqlSourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfigPostgresqlSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      salesforceSourceConfig: (() { final guardedValue = map['salesforceSourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfigSalesforceSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceConnectionProfile: pulumi.Input.fromValue(map['sourceConnectionProfile'] as String),
      spannerSourceConfig: (() { final guardedValue = map['spannerSourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfigSpannerSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sqlServerSourceConfig: (() { final guardedValue = map['sqlServerSourceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfigSqlServerSourceConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

