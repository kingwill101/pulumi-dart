// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewaySettingsSettingsProtocolDetection {
  /// Specify whether to detect protocols from the initial bytes of client traffic.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ZeroTrustGatewaySettingsSettingsProtocolDetection].
  /// [enabled] Specify whether to detect protocols from the initial bytes of client traffic.
  const ZeroTrustGatewaySettingsSettingsProtocolDetection({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ZeroTrustGatewaySettingsSettingsProtocolDetection.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewaySettingsSettingsProtocolDetection(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
