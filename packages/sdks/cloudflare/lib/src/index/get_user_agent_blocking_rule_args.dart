// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_agent_blocking_rule_filter.dart';

/// {@template pulumi_index_get_user_agent_blocking_rule_get_user_agent_blocking_rule_args_doc}
/// Arguments for getUserAgentBlockingRule.
/// {@endtemplate}
/// {@macro pulumi_index_get_user_agent_blocking_rule_get_user_agent_blocking_rule_args_doc}
class GetUserAgentBlockingRuleArgs {
  final pulumi.Input<GetUserAgentBlockingRuleFilter?>? filter;
  /// The unique identifier of the User Agent Blocking rule.
  final pulumi.Input<String?>? uaRuleId;
  /// Defines an identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetUserAgentBlockingRuleArgs].
  /// [filter] Optional.
  /// [uaRuleId] The unique identifier of the User Agent Blocking rule.
  /// [zoneId] Defines an identifier.
  const GetUserAgentBlockingRuleArgs({
    this.filter,
    this.uaRuleId,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<GetUserAgentBlockingRuleFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'uaRuleId': ?uaRuleId,
      'zoneId': ?zoneId,
    };
  }

  factory GetUserAgentBlockingRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetUserAgentBlockingRuleArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetUserAgentBlockingRuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uaRuleId: (() { final guardedValue = map['uaRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
