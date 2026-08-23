// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DatabaseAdvancedMysqlConfig resources.
class DatabaseAdvancedMysqlConfigState {
  /// The ID of the target MySQL Advanced Edition cluster.
  final pulumi.Input<String>? clusterId;
  /// A map of MySQL system variable names to their string values. Only parameters included in this map are managed by Terraform.
  final pulumi.Input<Map<String, String>>? mysqlParameters;

  /// Creates a new [DatabaseAdvancedMysqlConfigState].
  /// [clusterId] The ID of the target MySQL Advanced Edition cluster.
  /// [mysqlParameters] A map of MySQL system variable names to their string values. Only parameters included in this map are managed by Terraform.
  const DatabaseAdvancedMysqlConfigState({
    this.clusterId,
    this.mysqlParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'mysqlParameters': ?mysqlParameters,
    };
  }

  factory DatabaseAdvancedMysqlConfigState.fromMap(Map<String, dynamic> map) {
    return DatabaseAdvancedMysqlConfigState(
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mysqlParameters: (() { final guardedValue = map['mysqlParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
