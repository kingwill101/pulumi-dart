// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_argo_tiered_caching_get_argo_tiered_caching_args_doc}
/// Arguments for getArgoTieredCaching.
/// {@endtemplate}
/// {@macro pulumi_index_get_argo_tiered_caching_get_argo_tiered_caching_args_doc}
class GetArgoTieredCachingArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetArgoTieredCachingArgs].
  /// [zoneId] Identifier.
  const GetArgoTieredCachingArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetArgoTieredCachingArgs.fromMap(Map<String, dynamic> map) {
    return GetArgoTieredCachingArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
