// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_agent_blocking_rule_configuration.dart';

/// Input properties used for looking up and filtering UserAgentBlockingRule resources.
class UserAgentBlockingRuleState {
  final pulumi.Input<UserAgentBlockingRuleConfiguration?>? configuration;
  /// An informative summary of the rule. This value is sanitized and any tags will be removed.
  final pulumi.Input<String?>? description;
  /// The action to apply to a matched request.
  /// Available values: "block", "challenge", "whitelist", "js*challenge", "managed*challenge".
  final pulumi.Input<String?>? mode;
  /// When true, indicates that the rule is currently paused.
  final pulumi.Input<bool?>? paused;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [UserAgentBlockingRuleState].
  /// [configuration] Optional.
  /// [description] An informative summary of the rule. This value is sanitized and any tags will be removed.
  /// [mode] The action to apply to a matched request.
  /// [paused] When true, indicates that the rule is currently paused.
  /// [zoneId] Defines an identifier.
  const UserAgentBlockingRuleState({
    this.configuration,
    this.description,
    this.mode,
    this.paused,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<UserAgentBlockingRuleConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'description': ?description,
      'mode': ?mode,
      'paused': ?paused,
      'zoneId': ?zoneId,
    };
  }

  factory UserAgentBlockingRuleState.fromMap(Map<String, dynamic> map) {
    return UserAgentBlockingRuleState(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserAgentBlockingRuleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
