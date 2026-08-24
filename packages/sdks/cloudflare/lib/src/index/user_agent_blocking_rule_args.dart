// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_agent_blocking_rule_configuration.dart';

/// {@template pulumi_index_user_agent_blocking_rule_user_agent_blocking_rule_args_doc}
/// The set of arguments for UserAgentBlockingRule.
/// {@endtemplate}
/// {@macro pulumi_index_user_agent_blocking_rule_user_agent_blocking_rule_args_doc}
class UserAgentBlockingRuleArgs {
  final pulumi.Input<UserAgentBlockingRuleConfiguration> configuration;
  /// An informative summary of the rule. This value is sanitized and any tags will be removed.
  final pulumi.Input<String?>? description;
  /// The action to apply to a matched request.
  /// Available values: "block", "challenge", "whitelist", "js*challenge", "managed*challenge".
  final pulumi.Input<String> mode;
  /// When true, indicates that the rule is currently paused.
  final pulumi.Input<bool?>? paused;
  /// Defines an identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [UserAgentBlockingRuleArgs].
  /// [configuration] Required.
  /// [description] An informative summary of the rule. This value is sanitized and any tags will be removed.
  /// [mode] The action to apply to a matched request.
  /// [paused] When true, indicates that the rule is currently paused.
  /// [zoneId] Defines an identifier.
  const UserAgentBlockingRuleArgs({
    required this.configuration,
    this.description,
    required this.mode,
    this.paused,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<UserAgentBlockingRuleConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'description': ?description,
      'mode': mode,
      'paused': ?paused,
      'zoneId': zoneId,
    };
  }

  factory UserAgentBlockingRuleArgs.fromMap(Map<String, dynamic> map) {
    return UserAgentBlockingRuleArgs(
      configuration: pulumi.Input.fromValue(UserAgentBlockingRuleConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
