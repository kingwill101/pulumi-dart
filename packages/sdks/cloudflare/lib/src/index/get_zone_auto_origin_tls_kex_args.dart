// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zone_auto_origin_tls_kex_get_zone_auto_origin_tls_kex_args_doc}
/// Arguments for getZoneAutoOriginTlsKex.
/// {@endtemplate}
/// {@macro pulumi_index_get_zone_auto_origin_tls_kex_get_zone_auto_origin_tls_kex_args_doc}
class GetZoneAutoOriginTlsKexArgs {
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetZoneAutoOriginTlsKexArgs].
  /// [zoneId] Required.
  const GetZoneAutoOriginTlsKexArgs({
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': zoneId,
    };
  }

  factory GetZoneAutoOriginTlsKexArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneAutoOriginTlsKexArgs(
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
