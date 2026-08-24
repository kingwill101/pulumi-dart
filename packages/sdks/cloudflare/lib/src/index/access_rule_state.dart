// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_rule_configuration.dart';
import 'access_rule_scope.dart';

/// Input properties used for looking up and filtering AccessRule resources.
class AccessRuleState {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  /// The available actions that a rule can apply to a matched request.
  final pulumi.Input<List<String>?>? allowedModes;
  /// The rule configuration.
  final pulumi.Input<AccessRuleConfiguration?>? configuration;
  /// The timestamp of when the rule was created.
  final pulumi.Input<String?>? createdOn;
  /// The action to apply to a matched request.
  /// Available values: "block", "challenge", "whitelist", "js*challenge", "managed*challenge".
  final pulumi.Input<String?>? mode;
  /// The timestamp of when the rule was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// An informative summary of the rule, typically used as a reminder or explanation.
  final pulumi.Input<String?>? notes;
  /// All zones owned by the user will have the rule applied.
  final pulumi.Input<AccessRuleScope?>? scope;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [AccessRuleState].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [allowedModes] The available actions that a rule can apply to a matched request.
  /// [configuration] The rule configuration.
  /// [createdOn] The timestamp of when the rule was created.
  /// [mode] The action to apply to a matched request.
  /// [modifiedOn] The timestamp of when the rule was last modified.
  /// [notes] An informative summary of the rule, typically used as a reminder or explanation.
  /// [scope] All zones owned by the user will have the rule applied.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const AccessRuleState({
    this.accountId,
    this.allowedModes,
    this.configuration,
    this.createdOn,
    this.mode,
    this.modifiedOn,
    this.notes,
    this.scope,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allowedModes': ?allowedModes,
      'configuration': ?pulumi.Input.mapOptionalInputValue<AccessRuleConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'createdOn': ?createdOn,
      'mode': ?mode,
      'modifiedOn': ?modifiedOn,
      'notes': ?notes,
      'scope': ?pulumi.Input.mapOptionalInputValue<AccessRuleScope, Map<String, dynamic>>(scope, (value) => value.toMap()),
      'zoneId': ?zoneId,
    };
  }

  factory AccessRuleState.fromMap(Map<String, dynamic> map) {
    return AccessRuleState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowedModes: (() { final guardedValue = map['allowedModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessRuleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessRuleScope.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
