// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_sink_config_credentials.dart';
import 'pipeline_sink_config_file_naming.dart';
import 'pipeline_sink_config_partitioning.dart';
import 'pipeline_sink_config_rolling_policy.dart';

class PipelineSinkConfig {
  /// Cloudflare Account ID for the bucket
  final pulumi.Input<String> accountId;
  /// R2 Bucket to write to
  final pulumi.Input<String> bucket;
  final pulumi.Input<PipelineSinkConfigCredentials?>? credentials;
  /// Controls filename prefix/suffix and strategy.
  final pulumi.Input<PipelineSinkConfigFileNaming?>? fileNaming;
  /// Jurisdiction this bucket is hosted in
  final pulumi.Input<String?>? jurisdiction;
  /// Table namespace
  final pulumi.Input<String?>? namespace;
  /// Data-layout partitioning for sinks.
  final pulumi.Input<PipelineSinkConfigPartitioning?>? partitioning;
  /// Subpath within the bucket to write to
  final pulumi.Input<String?>? path;
  /// Rolling policy for file sinks (when & why to close a file and open a new one).
  final pulumi.Input<PipelineSinkConfigRollingPolicy?>? rollingPolicy;
  /// Table name
  final pulumi.Input<String?>? tableName;
  /// Authentication token
  final pulumi.Input<String?>? token;

  /// Creates a new [PipelineSinkConfig].
  /// [accountId] Cloudflare Account ID for the bucket
  /// [bucket] R2 Bucket to write to
  /// [credentials] Optional.
  /// [fileNaming] Controls filename prefix/suffix and strategy.
  /// [jurisdiction] Jurisdiction this bucket is hosted in
  /// [namespace] Table namespace
  /// [partitioning] Data-layout partitioning for sinks.
  /// [path] Subpath within the bucket to write to
  /// [rollingPolicy] Rolling policy for file sinks (when & why to close a file and open a new one).
  /// [tableName] Table name
  /// [token] Authentication token
  const PipelineSinkConfig({
    required this.accountId,
    required this.bucket,
    this.credentials,
    this.fileNaming,
    this.jurisdiction,
    this.namespace,
    this.partitioning,
    this.path,
    this.rollingPolicy,
    this.tableName,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bucket': bucket,
      'credentials': ?pulumi.Input.mapOptionalInputValue<PipelineSinkConfigCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'fileNaming': ?pulumi.Input.mapOptionalInputValue<PipelineSinkConfigFileNaming, Map<String, dynamic>>(fileNaming, (value) => value.toMap()),
      'jurisdiction': ?jurisdiction,
      'namespace': ?namespace,
      'partitioning': ?pulumi.Input.mapOptionalInputValue<PipelineSinkConfigPartitioning, Map<String, dynamic>>(partitioning, (value) => value.toMap()),
      'path': ?path,
      'rollingPolicy': ?pulumi.Input.mapOptionalInputValue<PipelineSinkConfigRollingPolicy, Map<String, dynamic>>(rollingPolicy, (value) => value.toMap()),
      'tableName': ?tableName,
      'token': ?token,
    };
  }

  factory PipelineSinkConfig.fromMap(Map<String, dynamic> map) {
    return PipelineSinkConfig(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineSinkConfigCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileNaming: (() { final guardedValue = map['fileNaming']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineSinkConfigFileNaming.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitioning: (() { final guardedValue = map['partitioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineSinkConfigPartitioning.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rollingPolicy: (() { final guardedValue = map['rollingPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipelineSinkConfigRollingPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
