// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_firewall_rule.dart';

/// {@template pulumi_index_database_firewall_database_firewall_args_doc}
/// The set of arguments for DatabaseFirewall.
/// {@endtemplate}
/// {@macro pulumi_index_database_firewall_database_firewall_args_doc}
class DatabaseFirewallArgs {
  /// The ID of the target database cluster.
  final pulumi.Input<String> clusterId;
  /// A rule specifying a resource allowed to access the database cluster. The following arguments must be specified:
  final pulumi.Input<List<DatabaseFirewallRule>> rules;

  /// Creates a new [DatabaseFirewallArgs].
  /// [clusterId] The ID of the target database cluster.
  /// [rules] A rule specifying a resource allowed to access the database cluster. The following arguments must be specified:
  const DatabaseFirewallArgs({
    required this.clusterId,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'rules': pulumi.Input.mapInputValue<List<DatabaseFirewallRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<DatabaseFirewallRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatabaseFirewallArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseFirewallArgs(
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<DatabaseFirewallRule>(map['rules']!, (value) => DatabaseFirewallRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
