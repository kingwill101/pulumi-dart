// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zone_tracing_get_zone_tracing_args_doc}
/// Arguments for getZoneTracing.
/// {@endtemplate}
/// {@macro pulumi_index_get_zone_tracing_get_zone_tracing_args_doc}
class GetZoneTracingArgs {
  /// Specify the zone ID.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetZoneTracingArgs].
  /// [zoneId] Specify the zone ID.
  const GetZoneTracingArgs({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetZoneTracingArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneTracingArgs(
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
