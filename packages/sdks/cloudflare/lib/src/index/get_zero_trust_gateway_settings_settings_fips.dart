// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewaySettingsSettingsFips {
  /// Enforce cipher suites and TLS versions compliant with FIPS 140-2.
  final pulumi.Input<bool> tls;

  /// Creates a new [GetZeroTrustGatewaySettingsSettingsFips].
  /// [tls] Enforce cipher suites and TLS versions compliant with FIPS 140-2.
  const GetZeroTrustGatewaySettingsSettingsFips({
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tls': tls,
    };
  }

  factory GetZeroTrustGatewaySettingsSettingsFips.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsSettingsFips(
      tls: pulumi.Input.fromValue(map['tls'] as bool),
    );
  }
}
