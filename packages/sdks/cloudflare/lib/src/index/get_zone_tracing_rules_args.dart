// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zone_tracing_rules_get_zone_tracing_rules_args_doc}
/// Arguments for getZoneTracingRules.
/// {@endtemplate}
/// {@macro pulumi_index_get_zone_tracing_rules_get_zone_tracing_rules_args_doc}
class GetZoneTracingRulesArgs {
  /// Specify the zone ID.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetZoneTracingRulesArgs].
  /// [zoneId] Specify the zone ID.
  const GetZoneTracingRulesArgs({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetZoneTracingRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneTracingRulesArgs(
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
