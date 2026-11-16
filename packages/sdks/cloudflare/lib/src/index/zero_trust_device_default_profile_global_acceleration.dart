// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDeviceDefaultProfileGlobalAcceleration {
  /// Whether WARP users may manually override the automatic Global Acceleration decision. Defaults to true when not provided.
  final pulumi.Input<bool?>? allowManualOverride;
  /// IP:port entries for the API endpoints.
  final pulumi.Input<List<String>> apiEndpoints;
  /// Automatically switch Global Acceleration regions based on device location. Defaults to false when not provided.
  final pulumi.Input<bool?>? autoswitch;
  /// Global acceleration settings are used only when "enabled".
  final pulumi.Input<bool> enabled;
  /// IP:port entries for the MASQUE tunnel endpoints. Either wireguard*endpoints or masque*endpoints must be provided.
  final pulumi.Input<List<String>> masqueEndpoints;
  /// IP:port entries for the WireGuard tunnel endpoints. Either wireguard*endpoints or masque*endpoints must be provided.
  final pulumi.Input<List<String>> wireguardEndpoints;

  /// Creates a new [ZeroTrustDeviceDefaultProfileGlobalAcceleration].
  /// [allowManualOverride] Whether WARP users may manually override the automatic Global Acceleration decision. Defaults to true when not provided.
  /// [apiEndpoints] IP:port entries for the API endpoints.
  /// [autoswitch] Automatically switch Global Acceleration regions based on device location. Defaults to false when not provided.
  /// [enabled] Global acceleration settings are used only when "enabled".
  /// [masqueEndpoints] IP:port entries for the MASQUE tunnel endpoints. Either wireguard*endpoints or masque*endpoints must be provided.
  /// [wireguardEndpoints] IP:port entries for the WireGuard tunnel endpoints. Either wireguard*endpoints or masque*endpoints must be provided.
  const ZeroTrustDeviceDefaultProfileGlobalAcceleration({
    this.allowManualOverride,
    required this.apiEndpoints,
    this.autoswitch,
    required this.enabled,
    required this.masqueEndpoints,
    required this.wireguardEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowManualOverride': ?allowManualOverride,
      'apiEndpoints': apiEndpoints,
      'autoswitch': ?autoswitch,
      'enabled': enabled,
      'masqueEndpoints': masqueEndpoints,
      'wireguardEndpoints': wireguardEndpoints,
    };
  }

  factory ZeroTrustDeviceDefaultProfileGlobalAcceleration.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceDefaultProfileGlobalAcceleration(
      allowManualOverride: (() { final guardedValue = map['allowManualOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      apiEndpoints: pulumi.Input.fromValue((map['apiEndpoints'] as List).cast<String>()),
      autoswitch: (() { final guardedValue = map['autoswitch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      masqueEndpoints: pulumi.Input.fromValue((map['masqueEndpoints'] as List).cast<String>()),
      wireguardEndpoints: pulumi.Input.fromValue((map['wireguardEndpoints'] as List).cast<String>()),
    );
  }
}
