// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_email_routing_rule_filter.dart';

/// {@template pulumi_index_get_email_routing_rule_get_email_routing_rule_args_doc}
/// Arguments for getEmailRoutingRule.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_routing_rule_get_email_routing_rule_args_doc}
class GetEmailRoutingRuleArgs {
  final pulumi.Input<GetEmailRoutingRuleFilter?>? filter;
  /// Routing rule identifier.
  final pulumi.Input<String?>? ruleIdentifier;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetEmailRoutingRuleArgs].
  /// [filter] Optional.
  /// [ruleIdentifier] Routing rule identifier.
  /// [zoneId] Identifier.
  const GetEmailRoutingRuleArgs({
    this.filter,
    this.ruleIdentifier,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<GetEmailRoutingRuleFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'ruleIdentifier': ?ruleIdentifier,
      'zoneId': ?zoneId,
    };
  }

  factory GetEmailRoutingRuleArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingRuleArgs(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetEmailRoutingRuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleIdentifier: (() { final guardedValue = map['ruleIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
