// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewaySettingsSettingsFips {
  /// Enforce cipher suites and TLS versions compliant with FIPS 140-2.
  final pulumi.Input<bool?>? tls;

  /// Creates a new [ZeroTrustGatewaySettingsSettingsFips].
  /// [tls] Enforce cipher suites and TLS versions compliant with FIPS 140-2.
  const ZeroTrustGatewaySettingsSettingsFips({
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tls': ?tls,
    };
  }

  factory ZeroTrustGatewaySettingsSettingsFips.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewaySettingsSettingsFips(
      tls: (() { final guardedValue = map['tls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
