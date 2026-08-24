// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewaySettingsSettingsBodyScanning {
  /// Specify the inspection mode as either `deep` or `shallow`.
  /// Available values: "deep", "shallow".
  final pulumi.Input<String> inspectionMode;

  /// Creates a new [GetZeroTrustGatewaySettingsSettingsBodyScanning].
  /// [inspectionMode] Specify the inspection mode as either `deep` or `shallow`.
  const GetZeroTrustGatewaySettingsSettingsBodyScanning({
    required this.inspectionMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inspectionMode': inspectionMode,
    };
  }

  factory GetZeroTrustGatewaySettingsSettingsBodyScanning.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsSettingsBodyScanning(
      inspectionMode: pulumi.Input.fromValue(map['inspectionMode'] as String),
    );
  }
}
