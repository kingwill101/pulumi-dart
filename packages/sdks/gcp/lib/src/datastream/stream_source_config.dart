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
  StreamSourceConfig({
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
      mongodbSourceConfig: map['mongodbSourceConfig'] == null ? null : (StreamSourceConfigMongodbSourceConfig.fromMap((map['mongodbSourceConfig'] as Map).cast<String, dynamic>())).input(),
      mysqlSourceConfig: map['mysqlSourceConfig'] == null ? null : (StreamSourceConfigMysqlSourceConfig.fromMap((map['mysqlSourceConfig'] as Map).cast<String, dynamic>())).input(),
      oracleSourceConfig: map['oracleSourceConfig'] == null ? null : (StreamSourceConfigOracleSourceConfig.fromMap((map['oracleSourceConfig'] as Map).cast<String, dynamic>())).input(),
      postgresqlSourceConfig: map['postgresqlSourceConfig'] == null ? null : (StreamSourceConfigPostgresqlSourceConfig.fromMap((map['postgresqlSourceConfig'] as Map).cast<String, dynamic>())).input(),
      salesforceSourceConfig: map['salesforceSourceConfig'] == null ? null : (StreamSourceConfigSalesforceSourceConfig.fromMap((map['salesforceSourceConfig'] as Map).cast<String, dynamic>())).input(),
      sourceConnectionProfile: (map['sourceConnectionProfile'] as String).input(),
      spannerSourceConfig: map['spannerSourceConfig'] == null ? null : (StreamSourceConfigSpannerSourceConfig.fromMap((map['spannerSourceConfig'] as Map).cast<String, dynamic>())).input(),
      sqlServerSourceConfig: map['sqlServerSourceConfig'] == null ? null : (StreamSourceConfigSqlServerSourceConfig.fromMap((map['sqlServerSourceConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

