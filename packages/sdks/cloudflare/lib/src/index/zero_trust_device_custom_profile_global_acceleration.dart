// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDeviceCustomProfileGlobalAcceleration {
  /// IP:port entries for the API endpoints.
  final pulumi.Input<List<String>> apiEndpoints;
  /// Global acceleration settings are used only when "enabled".
  final pulumi.Input<bool> enabled;
  /// IP:port entries for the MASQUE tunnel endpoints. Either wireguard*endpoints or masque*endpoints must be provided.
  final pulumi.Input<List<String>> masqueEndpoints;
  /// IP:port entries for the WireGuard tunnel endpoints. Either wireguard*endpoints or masque*endpoints must be provided.
  final pulumi.Input<List<String>> wireguardEndpoints;

  /// Creates a new [ZeroTrustDeviceCustomProfileGlobalAcceleration].
  /// [apiEndpoints] IP:port entries for the API endpoints.
  /// [enabled] Global acceleration settings are used only when "enabled".
  /// [masqueEndpoints] IP:port entries for the MASQUE tunnel endpoints. Either wireguard*endpoints or masque*endpoints must be provided.
  /// [wireguardEndpoints] IP:port entries for the WireGuard tunnel endpoints. Either wireguard*endpoints or masque*endpoints must be provided.
  const ZeroTrustDeviceCustomProfileGlobalAcceleration({
    required this.apiEndpoints,
    required this.enabled,
    required this.masqueEndpoints,
    required this.wireguardEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEndpoints': apiEndpoints,
      'enabled': enabled,
      'masqueEndpoints': masqueEndpoints,
      'wireguardEndpoints': wireguardEndpoints,
    };
  }

  factory ZeroTrustDeviceCustomProfileGlobalAcceleration.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceCustomProfileGlobalAcceleration(
      apiEndpoints: pulumi.Input.fromValue((map['apiEndpoints'] as List).cast<String>()),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      masqueEndpoints: pulumi.Input.fromValue((map['masqueEndpoints'] as List).cast<String>()),
      wireguardEndpoints: pulumi.Input.fromValue((map['wireguardEndpoints'] as List).cast<String>()),
    );
  }
}
