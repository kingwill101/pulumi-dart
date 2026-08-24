// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_custom_hostname_fallback_origin_get_custom_hostname_fallback_origin_args_doc}
/// Arguments for getCustomHostnameFallbackOrigin.
/// {@endtemplate}
/// {@macro pulumi_index_get_custom_hostname_fallback_origin_get_custom_hostname_fallback_origin_args_doc}
class GetCustomHostnameFallbackOriginArgs {
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GetCustomHostnameFallbackOriginArgs].
  /// [zoneId] Identifier.
  const GetCustomHostnameFallbackOriginArgs({
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomHostnameFallbackOriginArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomHostnameFallbackOriginArgs(
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
