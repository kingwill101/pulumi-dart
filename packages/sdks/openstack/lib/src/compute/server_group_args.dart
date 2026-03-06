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
  const ServerGroupArgs({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerGroupRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      valueSpecs: (() { final guardedValue = map['valueSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

