// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_regional_tiered_cache_get_regional_tiered_cache_args_doc}
/// Arguments for getRegionalTieredCache.
/// {@endtemplate}
/// {@macro pulumi_index_get_regional_tiered_cache_get_regional_tiered_cache_args_doc}
class GetRegionalTieredCacheArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetRegionalTieredCacheArgs].
  /// [zoneId] Identifier.
  const GetRegionalTieredCacheArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetRegionalTieredCacheArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalTieredCacheArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
