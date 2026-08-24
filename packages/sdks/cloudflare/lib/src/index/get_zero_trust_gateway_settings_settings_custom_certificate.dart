// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewaySettingsSettingsCustomCertificate {
  /// Indicate the internal certificate status.
  final pulumi.Input<String> bindingStatus;
  /// Specify whether to enable a custom certificate authority for signing Gateway traffic.
  final pulumi.Input<bool> enabled;
  /// Specify the UUID of the certificate (ID from MTLS certificate store).
  final pulumi.Input<String> id;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustGatewaySettingsSettingsCustomCertificate].
  /// [bindingStatus] Indicate the internal certificate status.
  /// [enabled] Specify whether to enable a custom certificate authority for signing Gateway traffic.
  /// [id] Specify the UUID of the certificate (ID from MTLS certificate store).
  /// [updatedAt] Required.
  const GetZeroTrustGatewaySettingsSettingsCustomCertificate({
    required this.bindingStatus,
    required this.enabled,
    required this.id,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingStatus': bindingStatus,
      'enabled': enabled,
      'id': id,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustGatewaySettingsSettingsCustomCertificate.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewaySettingsSettingsCustomCertificate(
      bindingStatus: pulumi.Input.fromValue(map['bindingStatus'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
