// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_rule_configuration.dart';

/// {@template pulumi_index_access_rule_access_rule_args_doc}
/// The set of arguments for AccessRule.
/// {@endtemplate}
/// {@macro pulumi_index_access_rule_access_rule_args_doc}
class AccessRuleArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// The rule configuration.
  final pulumi.Input<AccessRuleConfiguration> configuration;
  /// The action to apply to a matched request.
  /// Available values: "block", "challenge", "whitelist", "js*challenge", "managed*challenge".
  final pulumi.Input<String> mode;
  /// An informative summary of the rule, typically used as a reminder or explanation.
  final pulumi.Input<String?>? notes;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [AccessRuleArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [configuration] The rule configuration.
  /// [mode] The action to apply to a matched request.
  /// [notes] An informative summary of the rule, typically used as a reminder or explanation.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const AccessRuleArgs({
    this.accountId,
    required this.configuration,
    required this.mode,
    this.notes,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'configuration': pulumi.Input.mapInputValue<AccessRuleConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'mode': mode,
      'notes': ?notes,
      'zoneId': ?zoneId,
    };
  }

  factory AccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return AccessRuleArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configuration: pulumi.Input.fromValue(AccessRuleConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
