// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustGatewaySettingsSettingsBodyScanning {
  /// Specify the inspection mode as either `deep` or `shallow`.
  /// Available values: "deep", "shallow".
  final pulumi.Input<String?>? inspectionMode;

  /// Creates a new [ZeroTrustGatewaySettingsSettingsBodyScanning].
  /// [inspectionMode] Specify the inspection mode as either `deep` or `shallow`.
  const ZeroTrustGatewaySettingsSettingsBodyScanning({
    this.inspectionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inspectionMode': ?inspectionMode,
    };
  }

  factory ZeroTrustGatewaySettingsSettingsBodyScanning.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewaySettingsSettingsBodyScanning(
      inspectionMode: (() { final guardedValue = map['inspectionMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
