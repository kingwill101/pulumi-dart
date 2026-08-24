// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_cache_variants_value.dart';

/// {@template pulumi_index_zone_cache_variants_zone_cache_variants_args_doc}
/// The set of arguments for ZoneCacheVariants.
/// {@endtemplate}
/// {@macro pulumi_index_zone_cache_variants_zone_cache_variants_args_doc}
class ZoneCacheVariantsArgs {
  /// Value of the zone setting.
  final pulumi.Input<ZoneCacheVariantsValue> value;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ZoneCacheVariantsArgs].
  /// [value] Value of the zone setting.
  /// [zoneId] Identifier.
  const ZoneCacheVariantsArgs({
    required this.value,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': pulumi.Input.mapInputValue<ZoneCacheVariantsValue, Map<String, dynamic>>(value, (value) => value.toMap()),
      'zoneId': zoneId,
    };
  }

  factory ZoneCacheVariantsArgs.fromMap(Map<String, dynamic> map) {
    return ZoneCacheVariantsArgs(
      value: pulumi.Input.fromValue(ZoneCacheVariantsValue.fromMap((map['value']! as Map).cast<String, dynamic>())),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
