// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zone_auto_origin_tls_kex_zone_auto_origin_tls_kex_args_doc}
/// The set of arguments for ZoneAutoOriginTlsKex.
/// {@endtemplate}
/// {@macro pulumi_index_zone_auto_origin_tls_kex_zone_auto_origin_tls_kex_args_doc}
class ZoneAutoOriginTlsKexArgs {
  /// Controls enablement of Auto-Origin TLS KEX selection for the zone.
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> zoneId;

  /// Creates a new [ZoneAutoOriginTlsKexArgs].
  /// [enabled] Controls enablement of Auto-Origin TLS KEX selection for the zone.
  /// [zoneId] Required.
  const ZoneAutoOriginTlsKexArgs({
    required this.enabled,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'zoneId': zoneId,
    };
  }

  factory ZoneAutoOriginTlsKexArgs.fromMap(Map<String, dynamic> map) {
    return ZoneAutoOriginTlsKexArgs(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
