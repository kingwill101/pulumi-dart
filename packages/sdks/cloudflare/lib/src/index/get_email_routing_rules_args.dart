// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_email_routing_rules_get_email_routing_rules_args_doc}
/// Arguments for getEmailRoutingRules.
/// {@endtemplate}
/// {@macro pulumi_index_get_email_routing_rules_get_email_routing_rules_args_doc}
class GetEmailRoutingRulesArgs {
  /// Filter by enabled routing rules.
  final pulumi.Input<bool?>? enabled;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetEmailRoutingRulesArgs].
  /// [enabled] Filter by enabled routing rules.
  /// [maxItems] Max items to fetch, default: 1000
  /// [zoneId] Identifier.
  const GetEmailRoutingRulesArgs({
    this.enabled,
    this.maxItems,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'maxItems': ?maxItems,
      'zoneId': ?zoneId,
    };
  }

  factory GetEmailRoutingRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingRulesArgs(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
