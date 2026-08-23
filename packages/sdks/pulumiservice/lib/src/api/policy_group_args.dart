// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_policy_group_args_doc}
/// The set of arguments for PolicyGroup.
/// {@endtemplate}
/// {@macro pulumi_api_policy_group_args_doc}
class PolicyGroupArgs {
  /// Agent pool ID for policy evaluation. Defaults to Pulumi hosted pool if not specified.
  final pulumi.Input<String>? agentPoolId;
  /// The type of entities this policy group applies to (stacks or accounts).
  final pulumi.Input<String> entityType;
  /// The enforcement mode for the policy group (audit or preventative). Defaults to 'audit' for account policy groups, 'preventative' for stack policy groups.
  final pulumi.Input<String>? mode;
  /// The name of the new policy group.
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;

  /// Creates a new [PolicyGroupArgs].
  /// [agentPoolId] Agent pool ID for policy evaluation. Defaults to Pulumi hosted pool if not specified.
  /// [entityType] The type of entities this policy group applies to (stacks or accounts).
  /// [mode] The enforcement mode for the policy group (audit or preventative). Defaults to 'audit' for account policy groups, 'preventative' for stack policy groups.
  /// [name] The name of the new policy group.
  /// [orgName] The organization name
  const PolicyGroupArgs({
    this.agentPoolId,
    required this.entityType,
    this.mode,
    required this.name,
    required this.orgName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolId': ?agentPoolId,
      'entityType': entityType,
      'mode': ?mode,
      'name': name,
      'orgName': orgName,
    };
  }

  factory PolicyGroupArgs.fromMap(Map<String, dynamic> map) {
    return PolicyGroupArgs(
      agentPoolId: (() { final guardedValue = map['agentPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityType: pulumi.Input.fromValue(map['entityType'] as String),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
    );
  }
}
