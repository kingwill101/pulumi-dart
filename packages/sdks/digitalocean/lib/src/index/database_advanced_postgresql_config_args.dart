// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_advanced_postgresql_config_database_advanced_postgresql_config_args_doc}
/// The set of arguments for DatabaseAdvancedPostgresqlConfig.
/// {@endtemplate}
/// {@macro pulumi_index_database_advanced_postgresql_config_database_advanced_postgresql_config_args_doc}
class DatabaseAdvancedPostgresqlConfigArgs {
  /// The ID of the target PostgreSQL Advanced Edition cluster.
  final pulumi.Input<String> clusterId;
  /// A map of PostgreSQL GUC parameter names to their string values. Only parameters included in this map are managed by Terraform. Values use PostgreSQL GUC syntax (for example, `workMem` is specified in kilobytes unless a unit suffix is provided).
  final pulumi.Input<Map<String, String>>? pgParameters;

  /// Creates a new [DatabaseAdvancedPostgresqlConfigArgs].
  /// [clusterId] The ID of the target PostgreSQL Advanced Edition cluster.
  /// [pgParameters] A map of PostgreSQL GUC parameter names to their string values. Only parameters included in this map are managed by Terraform. Values use PostgreSQL GUC syntax (for example, `workMem` is specified in kilobytes unless a unit suffix is provided).
  const DatabaseAdvancedPostgresqlConfigArgs({
    required this.clusterId,
    this.pgParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'pgParameters': ?pgParameters,
    };
  }

  factory DatabaseAdvancedPostgresqlConfigArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseAdvancedPostgresqlConfigArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      pgParameters: (() { final guardedValue = map['pgParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
