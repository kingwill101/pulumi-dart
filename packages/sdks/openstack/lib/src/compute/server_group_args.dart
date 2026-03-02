// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_rules.dart';

/// {@template pulumi_compute_server_group_server_group_args_doc}
/// The set of arguments for ServerGroup.
/// {@endtemplate}
/// {@macro pulumi_compute_server_group_server_group_args_doc}
class ServerGroupArgs {
  /// A unique name for the server group. Changing this creates
  /// a new server group.
  final pulumi.Input<String>? name;
  /// A list of exactly one policy name to associate with
  /// the server group. See the Policies section for more information. Changing this
  /// creates a new server group.
  final pulumi.Input<String>? policies;
  /// The region in which to obtain the V2 Compute client.
  /// If omitted, the `region` argument of the provider is used. Changing
  /// this creates a new server group.
  final pulumi.Input<String>? region;
  /// The rules which are applied to specified `policy`. Currently,
  /// only the `max_server_per_host` rule is supported for the `anti-affinity` policy.
  final pulumi.Input<ServerGroupRules>? rules;
  /// Map of additional options.
  final pulumi.Input<Map<String, String>>? valueSpecs;

  /// Creates a new [ServerGroupArgs].
  /// [name] A unique name for the server group. Changing this creates
  /// [policies] A list of exactly one policy name to associate with
  /// [region] The region in which to obtain the V2 Compute client.
  /// [rules] The rules which are applied to specified `policy`. Currently,
  /// [valueSpecs] Map of additional options.
  ServerGroupArgs({
    this.name,
    this.policies,
    this.region,
    this.rules,
    this.valueSpecs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'policies': ?policies,
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<ServerGroupRules, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'valueSpecs': ?valueSpecs,
    };
  }

  factory ServerGroupArgs.fromMap(Map<String, dynamic> map) {
    return ServerGroupArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      policies: map['policies'] == null ? null : (map['policies'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      rules: map['rules'] == null ? null : (ServerGroupRules.fromMap((map['rules'] as Map).cast<String, dynamic>())).input(),
      valueSpecs: map['valueSpecs'] == null ? null : ((map['valueSpecs'] as Map).cast<String, String>()).input(),
    );
  }
}

