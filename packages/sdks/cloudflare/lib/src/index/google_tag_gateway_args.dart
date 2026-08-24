// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_google_tag_gateway_google_tag_gateway_args_doc}
/// The set of arguments for GoogleTagGateway.
/// {@endtemplate}
/// {@macro pulumi_index_google_tag_gateway_google_tag_gateway_args_doc}
class GoogleTagGatewayArgs {
  /// Enables or disables Google Tag Gateway for this zone.
  final pulumi.Input<bool> enabled;
  /// Specifies the endpoint path for proxying Google Tag Manager requests. Use an absolute path starting with '/', with no nested paths and alphanumeric characters only (e.g. /metrics).
  final pulumi.Input<String> endpoint;
  /// Hides the original client IP address from Google when enabled.
  final pulumi.Input<bool> hideOriginalIp;
  /// Specify the Google Tag Manager container or measurement ID (e.g. GTM-XXXXXXX or G-XXXXXXXXXX).
  final pulumi.Input<String> measurementId;
  /// Set up the associated Google Tag on the zone automatically when enabled.
  final pulumi.Input<bool?>? setUpTag;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GoogleTagGatewayArgs].
  /// [enabled] Enables or disables Google Tag Gateway for this zone.
  /// [endpoint] Specifies the endpoint path for proxying Google Tag Manager requests. Use an absolute path starting with '/', with no nested paths and alphanumeric characters only (e.g. /metrics).
  /// [hideOriginalIp] Hides the original client IP address from Google when enabled.
  /// [measurementId] Specify the Google Tag Manager container or measurement ID (e.g. GTM-XXXXXXX or G-XXXXXXXXXX).
  /// [setUpTag] Set up the associated Google Tag on the zone automatically when enabled.
  /// [zoneId] Identifier.
  const GoogleTagGatewayArgs({
    required this.enabled,
    required this.endpoint,
    required this.hideOriginalIp,
    required this.measurementId,
    this.setUpTag,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'endpoint': endpoint,
      'hideOriginalIp': hideOriginalIp,
      'measurementId': measurementId,
      'setUpTag': ?setUpTag,
      'zoneId': zoneId,
    };
  }

  factory GoogleTagGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GoogleTagGatewayArgs(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      endpoint: pulumi.Input.fromValue(map['endpoint'] as String),
      hideOriginalIp: pulumi.Input.fromValue(map['hideOriginalIp'] as bool),
      measurementId: pulumi.Input.fromValue(map['measurementId'] as String),
      setUpTag: (() { final guardedValue = map['setUpTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
