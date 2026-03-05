// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exception_entry.dart';
import 'managed_rule_set.dart';
import 'owasp_crs_exclusion_entry.dart';

/// Allow to exclude some variable satisfy the condition for the WAF check.
class ManagedRulesDefinition {
  /// The exceptions that are applied on the policy.
  final pulumi.Input<List<ExceptionEntry>>? exceptions;
  /// The Exclusions that are applied on the policy.
  final pulumi.Input<List<OwaspCrsExclusionEntry>>? exclusions;
  /// The managed rule sets that are associated with the policy.
  final pulumi.Input<List<ManagedRuleSet>> managedRuleSets;

  /// Creates a new [ManagedRulesDefinition].
  /// [exceptions] The exceptions that are applied on the policy.
  /// [exclusions] The Exclusions that are applied on the policy.
  /// [managedRuleSets] The managed rule sets that are associated with the policy.
  ManagedRulesDefinition({
    this.exceptions,
    this.exclusions,
    required this.managedRuleSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exceptions': ?pulumi.Input.mapOptionalInputValue<List<ExceptionEntry>, List<Map<String, dynamic>>>(exceptions, (value) => pulumi.Input.encodeList<ExceptionEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<OwaspCrsExclusionEntry>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<OwaspCrsExclusionEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedRuleSets': pulumi.Input.mapInputValue<List<ManagedRuleSet>, List<Map<String, dynamic>>>(managedRuleSets, (value) => pulumi.Input.encodeList<ManagedRuleSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedRulesDefinition.fromMap(Map<String, dynamic> map) {
    return ManagedRulesDefinition(
      exceptions: (() { final guardedValue = map['exceptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExceptionEntry>(guardedValue, (value) => ExceptionEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OwaspCrsExclusionEntry>(guardedValue, (value) => OwaspCrsExclusionEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managedRuleSets: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedRuleSet>(map['managedRuleSets']!, (value) => ManagedRuleSet.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

