// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mysql_source_config_response_datastream_v1alpha1.dart';
import 'oracle_source_config_response_datastream_v1alpha1.dart';

/// The configuration of the stream source.
class SourceConfigResponseDatastreamV1alpha1 {
  /// MySQL data source configuration
  final pulumi.Input<MysqlSourceConfigResponseDatastreamV1alpha1>
  mysqlSourceConfig;

  /// Oracle data source configuration
  final pulumi.Input<OracleSourceConfigResponseDatastreamV1alpha1>
  oracleSourceConfig;

  /// Source connection profile identifier.
  final pulumi.Input<String> sourceConnectionProfileName;

  /// Creates a new [SourceConfigResponseDatastreamV1alpha1].
  /// [mysqlSourceConfig] MySQL data source configuration
  /// [oracleSourceConfig] Oracle data source configuration
  /// [sourceConnectionProfileName] Source connection profile identifier.
  SourceConfigResponseDatastreamV1alpha1({
    required this.mysqlSourceConfig,
    required this.oracleSourceConfig,
    required this.sourceConnectionProfileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mysqlSourceConfig':
          pulumi.Input.mapInputValue<
            MysqlSourceConfigResponseDatastreamV1alpha1,
            Map<String, dynamic>
          >(mysqlSourceConfig, (value) => value.toMap()),
      'oracleSourceConfig':
          pulumi.Input.mapInputValue<
            OracleSourceConfigResponseDatastreamV1alpha1,
            Map<String, dynamic>
          >(oracleSourceConfig, (value) => value.toMap()),
      'sourceConnectionProfileName': sourceConnectionProfileName,
    };
  }

  factory SourceConfigResponseDatastreamV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SourceConfigResponseDatastreamV1alpha1(
      mysqlSourceConfig: pulumi.Input.fromValue(
        MysqlSourceConfigResponseDatastreamV1alpha1.fromMap(
          (map['mysqlSourceConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      oracleSourceConfig: pulumi.Input.fromValue(
        OracleSourceConfigResponseDatastreamV1alpha1.fromMap(
          (map['oracleSourceConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      sourceConnectionProfileName: pulumi.Input.fromValue(
        map['sourceConnectionProfileName'] as String,
      ),
    );
  }
}
