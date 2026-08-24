// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewaySettingsSettingsTlsDecrypt {
  /// Specify whether to inspect encrypted HTTP traffic.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ZeroTrustGatewaySettingsSettingsTlsDecrypt].
  /// [enabled] Specify whether to inspect encrypted HTTP traffic.
  const ZeroTrustGatewaySettingsSettingsTlsDecrypt({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ZeroTrustGatewaySettingsSettingsTlsDecrypt.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewaySettingsSettingsTlsDecrypt(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
