// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zone_cache_reserve_zone_cache_reserve_args_doc}
/// The set of arguments for ZoneCacheReserve.
/// {@endtemplate}
/// {@macro pulumi_index_zone_cache_reserve_zone_cache_reserve_args_doc}
class ZoneCacheReserveArgs {
  /// Value of the Cache Reserve zone setting.
  /// Available values: "on", "off".
  final pulumi.Input<String?>? value;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ZoneCacheReserveArgs].
  /// [value] Value of the Cache Reserve zone setting.
  /// [zoneId] Identifier.
  const ZoneCacheReserveArgs({
    this.value,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
      'zoneId': zoneId,
    };
  }

  factory ZoneCacheReserveArgs.fromMap(Map<String, dynamic> map) {
    return ZoneCacheReserveArgs(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
