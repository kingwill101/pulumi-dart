// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_source_config_datastream_v1alpha1.dart';
import 'oracle_source_config_datastream_v1alpha1.dart';

/// The configuration of the stream source.
class SourceConfigDatastreamV1alpha1 {
  /// MySQL data source configuration
  final pulumi.Input<MysqlSourceConfigDatastreamV1alpha1>? mysqlSourceConfig;
  /// Oracle data source configuration
  final pulumi.Input<OracleSourceConfigDatastreamV1alpha1>? oracleSourceConfig;
  /// Source connection profile identifier.
  final pulumi.Input<String> sourceConnectionProfileName;

  /// Creates a new [SourceConfigDatastreamV1alpha1].
  /// [mysqlSourceConfig] MySQL data source configuration
  /// [oracleSourceConfig] Oracle data source configuration
  /// [sourceConnectionProfileName] Source connection profile identifier.
  SourceConfigDatastreamV1alpha1({
    this.mysqlSourceConfig,
    this.oracleSourceConfig,
    required this.sourceConnectionProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlSourceConfig': ?pulumi.Input.mapOptionalInputValue<MysqlSourceConfigDatastreamV1alpha1, Map<String, dynamic>>(mysqlSourceConfig, (value) => value.toMap()),
      'oracleSourceConfig': ?pulumi.Input.mapOptionalInputValue<OracleSourceConfigDatastreamV1alpha1, Map<String, dynamic>>(oracleSourceConfig, (value) => value.toMap()),
      'sourceConnectionProfileName': sourceConnectionProfileName,
    };
  }

  factory SourceConfigDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return SourceConfigDatastreamV1alpha1(
      mysqlSourceConfig: map['mysqlSourceConfig'] == null ? null : (MysqlSourceConfigDatastreamV1alpha1.fromMap((map['mysqlSourceConfig']! as Map).cast<String, dynamic>())).input(),
      oracleSourceConfig: map['oracleSourceConfig'] == null ? null : (OracleSourceConfigDatastreamV1alpha1.fromMap((map['oracleSourceConfig']! as Map).cast<String, dynamic>())).input(),
      sourceConnectionProfileName: (map['sourceConnectionProfileName'] as String).input(),
    );
  }
}

