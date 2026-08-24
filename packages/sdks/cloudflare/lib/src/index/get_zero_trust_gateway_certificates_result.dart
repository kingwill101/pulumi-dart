// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayCertificatesResult {
  /// Indicate the read-only deployment status of the certificate on Cloudflare's edge. Gateway TLS interception can use certificates in the 'available' (previously called 'active') state.
  /// Available values: "pending*deployment", "available", "pending*deletion", "inactive".
  final pulumi.Input<String> bindingStatus;
  /// Provide the CA certificate (read-only).
  final pulumi.Input<String> certificate;
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> expiresOn;
  /// Provide the SHA256 fingerprint of the certificate (read-only).
  final pulumi.Input<String> fingerprint;
  /// Identify the certificate with a UUID.
  final pulumi.Input<String> id;
  /// Indicate whether Gateway TLS interception uses this certificate (read-only). You cannot set this value directly. To configure interception, use the Gateway configuration setting named `certificate` (read-only).
  final pulumi.Input<bool> inUse;
  /// Indicate the organization that issued the certificate (read-only).
  final pulumi.Input<String> issuerOrg;
  /// Provide the entire issuer field of the certificate (read-only).
  final pulumi.Input<String> issuerRaw;
  /// Indicate the read-only certificate type, BYO-PKI (custom) or Gateway-managed.
  /// Available values: "custom", "gatewayManaged".
  final pulumi.Input<String> type;
  final pulumi.Input<String> updatedAt;
  final pulumi.Input<String> uploadedOn;

  /// Creates a new [GetZeroTrustGatewayCertificatesResult].
  /// [bindingStatus] Indicate the read-only deployment status of the certificate on Cloudflare's edge. Gateway TLS interception can use certificates in the 'available' (previously called 'active') state.
  /// [certificate] Provide the CA certificate (read-only).
  /// [createdAt] Required.
  /// [expiresOn] Required.
  /// [fingerprint] Provide the SHA256 fingerprint of the certificate (read-only).
  /// [id] Identify the certificate with a UUID.
  /// [inUse] Indicate whether Gateway TLS interception uses this certificate (read-only). You cannot set this value directly. To configure interception, use the Gateway configuration setting named `certificate` (read-only).
  /// [issuerOrg] Indicate the organization that issued the certificate (read-only).
  /// [issuerRaw] Provide the entire issuer field of the certificate (read-only).
  /// [type] Indicate the read-only certificate type, BYO-PKI (custom) or Gateway-managed.
  /// [updatedAt] Required.
  /// [uploadedOn] Required.
  const GetZeroTrustGatewayCertificatesResult({
    required this.bindingStatus,
    required this.certificate,
    required this.createdAt,
    required this.expiresOn,
    required this.fingerprint,
    required this.id,
    required this.inUse,
    required this.issuerOrg,
    required this.issuerRaw,
    required this.type,
    required this.updatedAt,
    required this.uploadedOn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingStatus': bindingStatus,
      'certificate': certificate,
      'createdAt': createdAt,
      'expiresOn': expiresOn,
      'fingerprint': fingerprint,
      'id': id,
      'inUse': inUse,
      'issuerOrg': issuerOrg,
      'issuerRaw': issuerRaw,
      'type': type,
      'updatedAt': updatedAt,
      'uploadedOn': uploadedOn,
    };
  }

  factory GetZeroTrustGatewayCertificatesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayCertificatesResult(
      bindingStatus: pulumi.Input.fromValue(map['bindingStatus'] as String),
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      expiresOn: pulumi.Input.fromValue(map['expiresOn'] as String),
      fingerprint: pulumi.Input.fromValue(map['fingerprint'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      inUse: pulumi.Input.fromValue(map['inUse'] as bool),
      issuerOrg: pulumi.Input.fromValue(map['issuerOrg'] as String),
      issuerRaw: pulumi.Input.fromValue(map['issuerRaw'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      uploadedOn: pulumi.Input.fromValue(map['uploadedOn'] as String),
    );
  }
}
