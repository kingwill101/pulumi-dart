// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_regional_tiered_cache_regional_tiered_cache_args_doc}
/// The set of arguments for RegionalTieredCache.
/// {@endtemplate}
/// {@macro pulumi_index_regional_tiered_cache_regional_tiered_cache_args_doc}
class RegionalTieredCacheArgs {
  /// Value of the Regional Tiered Cache zone setting.
  /// Available values: "on", "off".
  final pulumi.Input<String?>? value;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [RegionalTieredCacheArgs].
  /// [value] Value of the Regional Tiered Cache zone setting.
  /// [zoneId] Identifier.
  const RegionalTieredCacheArgs({
    this.value,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
      'zoneId': zoneId,
    };
  }

  factory RegionalTieredCacheArgs.fromMap(Map<String, dynamic> map) {
    return RegionalTieredCacheArgs(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
