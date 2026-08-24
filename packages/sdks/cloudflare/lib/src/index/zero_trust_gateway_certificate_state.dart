// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustGatewayCertificate resources.
class ZeroTrustGatewayCertificateState {
  final pulumi.Input<String?>? accountId;
  /// Whether to activate the certificate on Cloudflare's edge. When true, the certificate will be activated. When false, the certificate will be deactivated at the edge. This is a Terraform-only field and does not appear in the API response. Monitor `bindingStatus` for the activation status. Once a certificate is activated, you may use the certificate to intercept traffic
  final pulumi.Input<bool?>? activate;
  /// Indicate the read-only deployment status of the certificate on Cloudflare's edge. Gateway TLS interception can use certificates in the 'available' (previously called 'active') state.
  /// Available values: "pending*deployment", "available", "pending*deletion", "inactive".
  final pulumi.Input<String?>? bindingStatus;
  /// Provide the CA certificate (read-only).
  final pulumi.Input<String?>? certificate;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? expiresOn;
  /// Provide the SHA256 fingerprint of the certificate (read-only).
  final pulumi.Input<String?>? fingerprint;
  /// Indicate whether Gateway TLS interception uses this certificate (read-only). You cannot set this value directly. To configure interception, use the Gateway configuration setting named `certificate` (read-only).
  final pulumi.Input<bool?>? inUse;
  /// Indicate the organization that issued the certificate (read-only).
  final pulumi.Input<String?>? issuerOrg;
  /// Provide the entire issuer field of the certificate (read-only).
  final pulumi.Input<String?>? issuerRaw;
  /// Indicate the read-only certificate type, BYO-PKI (custom) or Gateway-managed.
  /// Available values: "custom", "gatewayManaged".
  final pulumi.Input<String?>? type;
  final pulumi.Input<String?>? updatedAt;
  final pulumi.Input<String?>? uploadedOn;
  /// Sets the certificate validity period in days (range: 1-10,950 days / ~30 years). Defaults to 1,825 days (5 years). **Important**: This field is only settable during the certificate creation.  Certificates becomes immutable after creation - use the `/activate` and `/deactivate` endpoints to manage certificate lifecycle.
  final pulumi.Input<int?>? validityPeriodDays;

  /// Creates a new [ZeroTrustGatewayCertificateState].
  /// [accountId] Optional.
  /// [activate] Whether to activate the certificate on Cloudflare's edge. When true, the certificate will be activated. When false, the certificate will be deactivated at the edge. This is a Terraform-only field and does not appear in the API response. Monitor `bindingStatus` for the activation status. Once a certificate is activated, you may use the certificate to intercept traffic
  /// [bindingStatus] Indicate the read-only deployment status of the certificate on Cloudflare's edge. Gateway TLS interception can use certificates in the 'available' (previously called 'active') state.
  /// [certificate] Provide the CA certificate (read-only).
  /// [createdAt] Optional.
  /// [expiresOn] Optional.
  /// [fingerprint] Provide the SHA256 fingerprint of the certificate (read-only).
  /// [inUse] Indicate whether Gateway TLS interception uses this certificate (read-only). You cannot set this value directly. To configure interception, use the Gateway configuration setting named `certificate` (read-only).
  /// [issuerOrg] Indicate the organization that issued the certificate (read-only).
  /// [issuerRaw] Provide the entire issuer field of the certificate (read-only).
  /// [type] Indicate the read-only certificate type, BYO-PKI (custom) or Gateway-managed.
  /// [updatedAt] Optional.
  /// [uploadedOn] Optional.
  /// [validityPeriodDays] Sets the certificate validity period in days (range: 1-10,950 days / ~30 years). Defaults to 1,825 days (5 years). **Important**: This field is only settable during the certificate creation.  Certificates becomes immutable after creation - use the `/activate` and `/deactivate` endpoints to manage certificate lifecycle.
  const ZeroTrustGatewayCertificateState({
    this.accountId,
    this.activate,
    this.bindingStatus,
    this.certificate,
    this.createdAt,
    this.expiresOn,
    this.fingerprint,
    this.inUse,
    this.issuerOrg,
    this.issuerRaw,
    this.type,
    this.updatedAt,
    this.uploadedOn,
    this.validityPeriodDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'activate': ?activate,
      'bindingStatus': ?bindingStatus,
      'certificate': ?certificate,
      'createdAt': ?createdAt,
      'expiresOn': ?expiresOn,
      'fingerprint': ?fingerprint,
      'inUse': ?inUse,
      'issuerOrg': ?issuerOrg,
      'issuerRaw': ?issuerRaw,
      'type': ?type,
      'updatedAt': ?updatedAt,
      'uploadedOn': ?uploadedOn,
      'validityPeriodDays': ?validityPeriodDays,
    };
  }

  factory ZeroTrustGatewayCertificateState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustGatewayCertificateState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      activate: (() { final guardedValue = map['activate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bindingStatus: (() { final guardedValue = map['bindingStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inUse: (() { final guardedValue = map['inUse']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      issuerOrg: (() { final guardedValue = map['issuerOrg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuerRaw: (() { final guardedValue = map['issuerRaw']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploadedOn: (() { final guardedValue = map['uploadedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validityPeriodDays: (() { final guardedValue = map['validityPeriodDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
