// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_monetization_rules_get_monetization_rules_args_doc}
/// Arguments for getMonetizationRules.
/// {@endtemplate}
/// {@macro pulumi_index_get_monetization_rules_get_monetization_rules_args_doc}
class GetMonetizationRulesArgs {
  /// The unique ID of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetMonetizationRulesArgs].
  /// [zoneId] The unique ID of the zone.
  const GetMonetizationRulesArgs({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetMonetizationRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetMonetizationRulesArgs(
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
