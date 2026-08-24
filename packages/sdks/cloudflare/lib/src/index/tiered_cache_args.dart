// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_tiered_cache_tiered_cache_args_doc}
/// The set of arguments for TieredCache.
/// {@endtemplate}
/// {@macro pulumi_index_tiered_cache_tiered_cache_args_doc}
class TieredCacheArgs {
  /// Enable or disable the Smart Tiered Cache.
  /// Available values: "on", "off".
  final pulumi.Input<String> value;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [TieredCacheArgs].
  /// [value] Enable or disable the Smart Tiered Cache.
  /// [zoneId] Identifier.
  const TieredCacheArgs({
    required this.value,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'zoneId': zoneId,
    };
  }

  factory TieredCacheArgs.fromMap(Map<String, dynamic> map) {
    return TieredCacheArgs(
      value: pulumi.Input.fromValue(map['value'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
