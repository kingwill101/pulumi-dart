// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GoogleTagGateway resources.
class GoogleTagGatewayState {
  /// Enables or disables Google Tag Gateway for this zone.
  final pulumi.Input<bool?>? enabled;
  /// Specifies the endpoint path for proxying Google Tag Manager requests. Use an absolute path starting with '/', with no nested paths and alphanumeric characters only (e.g. /metrics).
  final pulumi.Input<String?>? endpoint;
  /// Hides the original client IP address from Google when enabled.
  final pulumi.Input<bool?>? hideOriginalIp;
  /// Specify the Google Tag Manager container or measurement ID (e.g. GTM-XXXXXXX or G-XXXXXXXXXX).
  final pulumi.Input<String?>? measurementId;
  /// Set up the associated Google Tag on the zone automatically when enabled.
  final pulumi.Input<bool?>? setUpTag;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [GoogleTagGatewayState].
  /// [enabled] Enables or disables Google Tag Gateway for this zone.
  /// [endpoint] Specifies the endpoint path for proxying Google Tag Manager requests. Use an absolute path starting with '/', with no nested paths and alphanumeric characters only (e.g. /metrics).
  /// [hideOriginalIp] Hides the original client IP address from Google when enabled.
  /// [measurementId] Specify the Google Tag Manager container or measurement ID (e.g. GTM-XXXXXXX or G-XXXXXXXXXX).
  /// [setUpTag] Set up the associated Google Tag on the zone automatically when enabled.
  /// [zoneId] Identifier.
  const GoogleTagGatewayState({
    this.enabled,
    this.endpoint,
    this.hideOriginalIp,
    this.measurementId,
    this.setUpTag,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'endpoint': ?endpoint,
      'hideOriginalIp': ?hideOriginalIp,
      'measurementId': ?measurementId,
      'setUpTag': ?setUpTag,
      'zoneId': ?zoneId,
    };
  }

  factory GoogleTagGatewayState.fromMap(Map<String, dynamic> map) {
    return GoogleTagGatewayState(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hideOriginalIp: (() { final guardedValue = map['hideOriginalIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      measurementId: (() { final guardedValue = map['measurementId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      setUpTag: (() { final guardedValue = map['setUpTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
