// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_argo_tiered_caching_argo_tiered_caching_args_doc}
/// The set of arguments for ArgoTieredCaching.
/// {@endtemplate}
/// {@macro pulumi_index_argo_tiered_caching_argo_tiered_caching_args_doc}
class ArgoTieredCachingArgs {
  /// Enables Tiered Caching.
  /// Available values: "on", "off".
  final pulumi.Input<String> value;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ArgoTieredCachingArgs].
  /// [value] Enables Tiered Caching.
  /// [zoneId] Identifier.
  const ArgoTieredCachingArgs({
    required this.value,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
      'zoneId': zoneId,
    };
  }

  factory ArgoTieredCachingArgs.fromMap(Map<String, dynamic> map) {
    return ArgoTieredCachingArgs(
      value: pulumi.Input.fromValue(map['value'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
