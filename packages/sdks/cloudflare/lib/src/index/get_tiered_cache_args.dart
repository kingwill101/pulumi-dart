// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_tiered_cache_get_tiered_cache_args_doc}
/// Arguments for getTieredCache.
/// {@endtemplate}
/// {@macro pulumi_index_get_tiered_cache_get_tiered_cache_args_doc}
class GetTieredCacheArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetTieredCacheArgs].
  /// [zoneId] Identifier.
  const GetTieredCacheArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetTieredCacheArgs.fromMap(Map<String, dynamic> map) {
    return GetTieredCacheArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
