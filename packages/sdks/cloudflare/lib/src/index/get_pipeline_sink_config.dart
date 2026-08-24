// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_sink_config_file_naming.dart';
import 'get_pipeline_sink_config_partitioning.dart';
import 'get_pipeline_sink_config_rolling_policy.dart';

class GetPipelineSinkConfig {
  /// Cloudflare Account ID for the bucket
  final pulumi.Input<String> accountId;
  /// R2 Bucket to write to
  final pulumi.Input<String> bucket;
  /// Controls filename prefix/suffix and strategy.
  final pulumi.Input<GetPipelineSinkConfigFileNaming> fileNaming;
  /// Jurisdiction this bucket is hosted in
  final pulumi.Input<String> jurisdiction;
  /// Table namespace
  final pulumi.Input<String> namespace;
  /// Data-layout partitioning for sinks.
  final pulumi.Input<GetPipelineSinkConfigPartitioning> partitioning;
  /// Subpath within the bucket to write to
  final pulumi.Input<String> path;
  /// Rolling policy for file sinks (when & why to close a file and open a new one).
  final pulumi.Input<GetPipelineSinkConfigRollingPolicy> rollingPolicy;
  /// Table name
  final pulumi.Input<String> tableName;

  /// Creates a new [GetPipelineSinkConfig].
  /// [accountId] Cloudflare Account ID for the bucket
  /// [bucket] R2 Bucket to write to
  /// [fileNaming] Controls filename prefix/suffix and strategy.
  /// [jurisdiction] Jurisdiction this bucket is hosted in
  /// [namespace] Table namespace
  /// [partitioning] Data-layout partitioning for sinks.
  /// [path] Subpath within the bucket to write to
  /// [rollingPolicy] Rolling policy for file sinks (when & why to close a file and open a new one).
  /// [tableName] Table name
  const GetPipelineSinkConfig({
    required this.accountId,
    required this.bucket,
    required this.fileNaming,
    required this.jurisdiction,
    required this.namespace,
    required this.partitioning,
    required this.path,
    required this.rollingPolicy,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bucket': bucket,
      'fileNaming': pulumi.Input.mapInputValue<GetPipelineSinkConfigFileNaming, Map<String, dynamic>>(fileNaming, (value) => value.toMap()),
      'jurisdiction': jurisdiction,
      'namespace': namespace,
      'partitioning': pulumi.Input.mapInputValue<GetPipelineSinkConfigPartitioning, Map<String, dynamic>>(partitioning, (value) => value.toMap()),
      'path': path,
      'rollingPolicy': pulumi.Input.mapInputValue<GetPipelineSinkConfigRollingPolicy, Map<String, dynamic>>(rollingPolicy, (value) => value.toMap()),
      'tableName': tableName,
    };
  }

  factory GetPipelineSinkConfig.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinkConfig(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      fileNaming: pulumi.Input.fromValue(GetPipelineSinkConfigFileNaming.fromMap((map['fileNaming']! as Map).cast<String, dynamic>())),
      jurisdiction: pulumi.Input.fromValue(map['jurisdiction'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      partitioning: pulumi.Input.fromValue(GetPipelineSinkConfigPartitioning.fromMap((map['partitioning']! as Map).cast<String, dynamic>())),
      path: pulumi.Input.fromValue(map['path'] as String),
      rollingPolicy: pulumi.Input.fromValue(GetPipelineSinkConfigRollingPolicy.fromMap((map['rollingPolicy']! as Map).cast<String, dynamic>())),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
