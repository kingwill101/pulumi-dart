// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zone_cache_variants_get_zone_cache_variants_args_doc}
/// Arguments for getZoneCacheVariants.
/// {@endtemplate}
/// {@macro pulumi_index_get_zone_cache_variants_get_zone_cache_variants_args_doc}
class GetZoneCacheVariantsArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetZoneCacheVariantsArgs].
  /// [zoneId] Identifier.
  const GetZoneCacheVariantsArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneCacheVariantsArgs.fromMap(Map<String, dynamic> map) {
    return GetZoneCacheVariantsArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
