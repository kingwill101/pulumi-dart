// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_access_rule_filter.dart';

/// {@template pulumi_index_get_access_rule_get_access_rule_args_doc}
/// Arguments for getAccessRule.
/// {@endtemplate}
/// {@macro pulumi_index_get_access_rule_get_access_rule_args_doc}
class GetAccessRuleArgs {
  /// The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<GetAccessRuleFilter?>? filter;
  /// Unique identifier for a rule.
  final pulumi.Input<String?>? ruleId;
  /// The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetAccessRuleArgs].
  /// [accountId] The Account ID to use for this endpoint. Mutually exclusive with the Zone ID.
  /// [filter] Optional.
  /// [ruleId] Unique identifier for a rule.
  /// [zoneId] The Zone ID to use for this endpoint. Mutually exclusive with the Account ID.
  const GetAccessRuleArgs({
    this.accountId,
    this.filter,
    this.ruleId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetAccessRuleFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'ruleId': ?ruleId,
      'zoneId': ?zoneId,
    };
  }

  factory GetAccessRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessRuleArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAccessRuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
