// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getGoogleTagGateway.
class GetGoogleTagGatewayResult {
  /// Enables or disables Google Tag Gateway for this zone.
  final bool? enabled;
  /// Specifies the endpoint path for proxying Google Tag Manager requests. Use an absolute path starting with '/', with no nested paths and alphanumeric characters only (e.g. /metrics).
  final String? endpoint;
  /// Hides the original client IP address from Google when enabled.
  final bool? hideOriginalIp;
  /// Identifier.
  final String? id;
  /// Specify the Google Tag Manager container or measurement ID (e.g. GTM-XXXXXXX or G-XXXXXXXXXX).
  final String? measurementId;
  /// Set up the associated Google Tag on the zone automatically when enabled.
  final bool? setUpTag;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetGoogleTagGatewayResult].
  /// [enabled] Enables or disables Google Tag Gateway for this zone.
  /// [endpoint] Specifies the endpoint path for proxying Google Tag Manager requests. Use an absolute path starting with '/', with no nested paths and alphanumeric characters only (e.g. /metrics).
  /// [hideOriginalIp] Hides the original client IP address from Google when enabled.
  /// [id] Identifier.
  /// [measurementId] Specify the Google Tag Manager container or measurement ID (e.g. GTM-XXXXXXX or G-XXXXXXXXXX).
  /// [setUpTag] Set up the associated Google Tag on the zone automatically when enabled.
  /// [zoneId] Identifier.
  const GetGoogleTagGatewayResult({
    this.enabled,
    this.endpoint,
    this.hideOriginalIp,
    this.id,
    this.measurementId,
    this.setUpTag,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'endpoint': ?endpoint,
      'hideOriginalIp': ?hideOriginalIp,
      'id': ?id,
      'measurementId': ?measurementId,
      'setUpTag': ?setUpTag,
      'zoneId': ?zoneId,
    };
  }

  factory GetGoogleTagGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetGoogleTagGatewayResult(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hideOriginalIp: (() { final guardedValue = map['hideOriginalIp']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      measurementId: (() { final guardedValue = map['measurementId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      setUpTag: (() { final guardedValue = map['setUpTag']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
