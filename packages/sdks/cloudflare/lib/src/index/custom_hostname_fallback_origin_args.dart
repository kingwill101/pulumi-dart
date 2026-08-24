// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_custom_hostname_fallback_origin_custom_hostname_fallback_origin_args_doc}
/// The set of arguments for CustomHostnameFallbackOrigin.
/// {@endtemplate}
/// {@macro pulumi_index_custom_hostname_fallback_origin_custom_hostname_fallback_origin_args_doc}
class CustomHostnameFallbackOriginArgs {
  /// Your origin hostname that requests to your custom hostnames will be sent to.
  final pulumi.Input<String> origin;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [CustomHostnameFallbackOriginArgs].
  /// [origin] Your origin hostname that requests to your custom hostnames will be sent to.
  /// [zoneId] Identifier.
  const CustomHostnameFallbackOriginArgs({
    required this.origin,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'origin': origin,
      'zoneId': zoneId,
    };
  }

  factory CustomHostnameFallbackOriginArgs.fromMap(Map<String, dynamic> map) {
    return CustomHostnameFallbackOriginArgs(
      origin: pulumi.Input.fromValue(map['origin'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
