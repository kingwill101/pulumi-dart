// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_policy_group_args_doc}
/// The set of arguments for PolicyGroup.
/// {@endtemplate}
/// {@macro pulumi_api_policy_group_args_doc}
class PolicyGroupArgs {
  /// Preview: an account match rule to create the group with, a boolean expression over Insights account tags. Requires the tag-based policy groups feature; not allowed on preventative groups.
  final pulumi.Input<dynamic>? accountMatchRule;
  /// Agent pool ID for policy evaluation. Defaults to Pulumi hosted pool if not specified.
  final pulumi.Input<String?>? agentPoolId;
  /// Deprecated: a legacy label, `stacks` or `accounts`. When `mode` is omitted it picks the mode (`accounts` → audit, `stacks` → preventative). When this is omitted, it is derived from `mode`. It does not restrict which entities the group can hold.
  final pulumi.Input<String?>? entityType;
  /// The enforcement mode for the policy group (audit or preventative). The mode decides what the group can hold: an audit group holds stacks and Insights accounts, a preventative group holds stacks only. Required unless the deprecated `entityType` is sent. Fixed at creation; it cannot be changed later.
  final pulumi.Input<String?>? mode;
  /// The name of the new policy group. Up to 100 characters, made up of letters, numbers, hyphens, underscores, periods, or spaces, and may not begin or end with a space.
  final pulumi.Input<String> name;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// Preview: a stack match rule to create the group with, a boolean expression over stack tags. Requires the tag-based policy groups feature.
  final pulumi.Input<dynamic>? stackMatchRule;

  /// Creates a new [PolicyGroupArgs].
  /// [accountMatchRule] Preview: an account match rule to create the group with, a boolean expression over Insights account tags. Requires the tag-based policy groups feature; not allowed on preventative groups.
  /// [agentPoolId] Agent pool ID for policy evaluation. Defaults to Pulumi hosted pool if not specified.
  /// [entityType] Deprecated: a legacy label, `stacks` or `accounts`. When `mode` is omitted it picks the mode (`accounts` → audit, `stacks` → preventative). When this is omitted, it is derived from `mode`. It does not restrict which entities the group can hold.
  /// [mode] The enforcement mode for the policy group (audit or preventative). The mode decides what the group can hold: an audit group holds stacks and Insights accounts, a preventative group holds stacks only. Required unless the deprecated `entityType` is sent. Fixed at creation; it cannot be changed later.
  /// [name] The name of the new policy group. Up to 100 characters, made up of letters, numbers, hyphens, underscores, periods, or spaces, and may not begin or end with a space.
  /// [orgName] The organization name
  /// [stackMatchRule] Preview: a stack match rule to create the group with, a boolean expression over stack tags. Requires the tag-based policy groups feature.
  const PolicyGroupArgs({
    this.accountMatchRule,
    this.agentPoolId,
    this.entityType,
    this.mode,
    required this.name,
    required this.orgName,
    this.stackMatchRule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountMatchRule': ?accountMatchRule,
      'agentPoolId': ?agentPoolId,
      'entityType': ?entityType,
      'mode': ?mode,
      'name': name,
      'orgName': orgName,
      'stackMatchRule': ?stackMatchRule,
    };
  }

  factory PolicyGroupArgs.fromMap(Map<String, dynamic> map) {
    return PolicyGroupArgs(
      accountMatchRule: (() { final guardedValue = map['accountMatchRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      agentPoolId: (() { final guardedValue = map['agentPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityType: (() { final guardedValue = map['entityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      stackMatchRule: (() { final guardedValue = map['stackMatchRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
