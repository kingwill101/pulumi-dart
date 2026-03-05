// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'exception_entry_response.dart';
import 'managed_rule_set_response.dart';
import 'owasp_crs_exclusion_entry_response.dart';

/// Allow to exclude some variable satisfy the condition for the WAF check.
class ManagedRulesDefinitionResponse {
  /// The exceptions that are applied on the policy.
  final pulumi.Input<List<ExceptionEntryResponse>>? exceptions;
  /// The Exclusions that are applied on the policy.
  final pulumi.Input<List<OwaspCrsExclusionEntryResponse>>? exclusions;
  /// The managed rule sets that are associated with the policy.
  final pulumi.Input<List<ManagedRuleSetResponse>> managedRuleSets;

  /// Creates a new [ManagedRulesDefinitionResponse].
  /// [exceptions] The exceptions that are applied on the policy.
  /// [exclusions] The Exclusions that are applied on the policy.
  /// [managedRuleSets] The managed rule sets that are associated with the policy.
  ManagedRulesDefinitionResponse({
    this.exceptions,
    this.exclusions,
    required this.managedRuleSets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exceptions': ?pulumi.Input.mapOptionalInputValue<List<ExceptionEntryResponse>, List<Map<String, dynamic>>>(exceptions, (value) => pulumi.Input.encodeList<ExceptionEntryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<OwaspCrsExclusionEntryResponse>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<OwaspCrsExclusionEntryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'managedRuleSets': pulumi.Input.mapInputValue<List<ManagedRuleSetResponse>, List<Map<String, dynamic>>>(managedRuleSets, (value) => pulumi.Input.encodeList<ManagedRuleSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ManagedRulesDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ManagedRulesDefinitionResponse(
      exceptions: (() { final guardedValue = map['exceptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ExceptionEntryResponse>(guardedValue, (value) => ExceptionEntryResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OwaspCrsExclusionEntryResponse>(guardedValue, (value) => OwaspCrsExclusionEntryResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      managedRuleSets: pulumi.Input.fromValue(pulumi.Input.decodeList<ManagedRuleSetResponse>(map['managedRuleSets']!, (value) => ManagedRuleSetResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

