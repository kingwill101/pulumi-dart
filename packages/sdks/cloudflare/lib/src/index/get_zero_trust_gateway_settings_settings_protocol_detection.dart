// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewaySettingsSettingsProtocolDetection {
  /// Specify whether to detect protocols from the initial bytes of client traffic.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetZeroTrustGatewaySettingsSettingsProtocolDetection].
  /// [enabled] Specify whether to detect protocols from the initial bytes of client traffic.
  const GetZeroTrustGatewaySettingsSettingsProtocolDetection({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetZeroTrustGatewaySettingsSettingsProtocolDetection.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsSettingsProtocolDetection(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
