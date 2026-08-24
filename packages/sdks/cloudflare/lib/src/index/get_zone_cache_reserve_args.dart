// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zone_cache_reserve_get_zone_cache_reserve_args_doc}
/// Arguments for getZoneCacheReserve.
/// {@endtemplate}
/// {@macro pulumi_index_get_zone_cache_reserve_get_zone_cache_reserve_args_doc}
class GetZoneCacheReserveArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZoneCacheReserveArgs].
  /// [zoneId] Identifier.
  const GetZoneCacheReserveArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneCacheReserveArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneCacheReserveArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
