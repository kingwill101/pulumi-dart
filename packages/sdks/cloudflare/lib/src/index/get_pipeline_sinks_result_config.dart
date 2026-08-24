// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pipeline_sinks_result_config_file_naming.dart';
import 'get_pipeline_sinks_result_config_partitioning.dart';
import 'get_pipeline_sinks_result_config_rolling_policy.dart';

class GetPipelineSinksResultConfig {
  /// Cloudflare Account ID for the bucket
  final pulumi.Input<String> accountId;
  /// R2 Bucket to write to
  final pulumi.Input<String> bucket;
  /// Controls filename prefix/suffix and strategy.
  final pulumi.Input<GetPipelineSinksResultConfigFileNaming> fileNaming;
  /// Jurisdiction this bucket is hosted in
  final pulumi.Input<String> jurisdiction;
  /// Table namespace
  final pulumi.Input<String> namespace;
  /// Data-layout partitioning for sinks.
  final pulumi.Input<GetPipelineSinksResultConfigPartitioning> partitioning;
  /// Subpath within the bucket to write to
  final pulumi.Input<String> path;
  /// Rolling policy for file sinks (when & why to close a file and open a new one).
  final pulumi.Input<GetPipelineSinksResultConfigRollingPolicy> rollingPolicy;
  /// Table name
  final pulumi.Input<String> tableName;

  /// Creates a new [GetPipelineSinksResultConfig].
  /// [accountId] Cloudflare Account ID for the bucket
  /// [bucket] R2 Bucket to write to
  /// [fileNaming] Controls filename prefix/suffix and strategy.
  /// [jurisdiction] Jurisdiction this bucket is hosted in
  /// [namespace] Table namespace
  /// [partitioning] Data-layout partitioning for sinks.
  /// [path] Subpath within the bucket to write to
  /// [rollingPolicy] Rolling policy for file sinks (when & why to close a file and open a new one).
  /// [tableName] Table name
  const GetPipelineSinksResultConfig({
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
      'fileNaming': pulumi.Input.mapInputValue<GetPipelineSinksResultConfigFileNaming, Map<String, dynamic>>(fileNaming, (value) => value.toMap()),
      'jurisdiction': jurisdiction,
      'namespace': namespace,
      'partitioning': pulumi.Input.mapInputValue<GetPipelineSinksResultConfigPartitioning, Map<String, dynamic>>(partitioning, (value) => value.toMap()),
      'path': path,
      'rollingPolicy': pulumi.Input.mapInputValue<GetPipelineSinksResultConfigRollingPolicy, Map<String, dynamic>>(rollingPolicy, (value) => value.toMap()),
      'tableName': tableName,
    };
  }

  factory GetPipelineSinksResultConfig.fromMap(Map<String, dynamic> map) {
    return GetPipelineSinksResultConfig(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      fileNaming: pulumi.Input.fromValue(GetPipelineSinksResultConfigFileNaming.fromMap((map['fileNaming']! as Map).cast<String, dynamic>())),
      jurisdiction: pulumi.Input.fromValue(map['jurisdiction'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      partitioning: pulumi.Input.fromValue(GetPipelineSinksResultConfigPartitioning.fromMap((map['partitioning']! as Map).cast<String, dynamic>())),
      path: pulumi.Input.fromValue(map['path'] as String),
      rollingPolicy: pulumi.Input.fromValue(GetPipelineSinksResultConfigRollingPolicy.fromMap((map['rollingPolicy']! as Map).cast<String, dynamic>())),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
