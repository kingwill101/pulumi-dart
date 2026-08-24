// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewaySettingsSettingsTlsDecrypt {
  /// Specify whether to inspect encrypted HTTP traffic.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetZeroTrustGatewaySettingsSettingsTlsDecrypt].
  /// [enabled] Specify whether to inspect encrypted HTTP traffic.
  const GetZeroTrustGatewaySettingsSettingsTlsDecrypt({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetZeroTrustGatewaySettingsSettingsTlsDecrypt.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsSettingsTlsDecrypt(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
