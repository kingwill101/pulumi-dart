// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_database_advanced_mysql_config_database_advanced_mysql_config_args_doc}
/// The set of arguments for DatabaseAdvancedMysqlConfig.
/// {@endtemplate}
/// {@macro pulumi_index_database_advanced_mysql_config_database_advanced_mysql_config_args_doc}
class DatabaseAdvancedMysqlConfigArgs {
  /// The ID of the target MySQL Advanced Edition cluster.
  final pulumi.Input<String> clusterId;
  /// A map of MySQL system variable names to their string values. Only parameters included in this map are managed by Terraform.
  final pulumi.Input<Map<String, String>>? mysqlParameters;

  /// Creates a new [DatabaseAdvancedMysqlConfigArgs].
  /// [clusterId] The ID of the target MySQL Advanced Edition cluster.
  /// [mysqlParameters] A map of MySQL system variable names to their string values. Only parameters included in this map are managed by Terraform.
  const DatabaseAdvancedMysqlConfigArgs({
    required this.clusterId,
    this.mysqlParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'mysqlParameters': ?mysqlParameters,
    };
  }

  factory DatabaseAdvancedMysqlConfigArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseAdvancedMysqlConfigArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      mysqlParameters: (() { final guardedValue = map['mysqlParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
