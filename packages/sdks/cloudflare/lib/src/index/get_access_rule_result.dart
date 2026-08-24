// ignore_for_file: unused_element, unnecessary_cast

import 'get_access_rule_configuration.dart';
import 'get_access_rule_filter.dart';
import 'get_access_rule_scope.dart';

/// Result data returned by getAccessRule.
class GetAccessRuleResult {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final String? accountId;
  /// The available actions that a rule can apply to a matched request.
  final List<String>? allowedModes;
  /// The rule configuration.
  final GetAccessRuleConfiguration? configuration;
  /// The timestamp of when the rule was created.
  final String? createdOn;
  final GetAccessRuleFilter? filter;
  /// Unique identifier for a rule.
  final String? id;
  /// The action to apply to a matched request.
  /// Available values: "block", "challenge", "whitelist", "js*challenge", "managed*challenge".
  final String? mode;
  /// The timestamp of when the rule was last modified.
  final String? modifiedOn;
  /// An informative summary of the rule, typically used as a reminder or explanation.
  final String? notes;
  /// Unique identifier for a rule.
  final String? ruleId;
  /// All zones owned by the user will have the rule applied.
  final GetAccessRuleScope? scope;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final String? zoneId;

  /// Creates a new [GetAccessRuleResult].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [allowedModes] The available actions that a rule can apply to a matched request.
  /// [configuration] The rule configuration.
  /// [createdOn] The timestamp of when the rule was created.
  /// [filter] Optional.
  /// [id] Unique identifier for a rule.
  /// [mode] The action to apply to a matched request.
  /// [modifiedOn] The timestamp of when the rule was last modified.
  /// [notes] An informative summary of the rule, typically used as a reminder or explanation.
  /// [ruleId] Unique identifier for a rule.
  /// [scope] All zones owned by the user will have the rule applied.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetAccessRuleResult({
    this.accountId,
    this.allowedModes,
    this.configuration,
    this.createdOn,
    this.filter,
    this.id,
    this.mode,
    this.modifiedOn,
    this.notes,
    this.ruleId,
    this.scope,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'allowedModes': ?allowedModes,
      'configuration': ?configuration?.toMap(),
      'createdOn': ?createdOn,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'mode': ?mode,
      'modifiedOn': ?modifiedOn,
      'notes': ?notes,
      'ruleId': ?ruleId,
      'scope': ?scope?.toMap(),
      'zoneId': ?zoneId,
    };
  }

  factory GetAccessRuleResult.fromMap(Map<String, dynamic> map) {
    return GetAccessRuleResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allowedModes: (() { final guardedValue = map['allowedModes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return GetAccessRuleConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetAccessRuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return GetAccessRuleScope.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
