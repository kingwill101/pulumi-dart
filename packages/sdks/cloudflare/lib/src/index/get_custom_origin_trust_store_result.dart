// ignore_for_file: unused_element, unnecessary_cast

import 'get_custom_origin_trust_store_filter.dart';

/// Result data returned by getCustomOriginTrustStore.
class GetCustomOriginTrustStoreResult {
  /// The root CA certificate in PEM format. Only root CA certificates are accepted; intermediate and leaf certificates are not supported.
  final String? certificate;
  /// Identifier.
  final String? customOriginTrustStoreId;
  /// When the certificate expires.
  final String? expiresOn;
  final GetCustomOriginTrustStoreFilter? filter;
  /// Identifier.
  final String? id;
  /// The certificate authority that issued the certificate.
  final String? issuer;
  /// The type of hash used for the certificate.
  final String? signature;
  /// Status of the zone's custom SSL.
  /// Available values: "initializing", "pending*deployment", "active", "pending*deletion", "deleted", "expired".
  final String? status;
  /// When the certificate was last modified.
  final String? updatedAt;
  /// When the certificate was uploaded to Cloudflare.
  final String? uploadedOn;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetCustomOriginTrustStoreResult].
  /// [certificate] The root CA certificate in PEM format. Only root CA certificates are accepted; intermediate and leaf certificates are not supported.
  /// [customOriginTrustStoreId] Identifier.
  /// [expiresOn] When the certificate expires.
  /// [filter] Optional.
  /// [id] Identifier.
  /// [issuer] The certificate authority that issued the certificate.
  /// [signature] The type of hash used for the certificate.
  /// [status] Status of the zone's custom SSL.
  /// [updatedAt] When the certificate was last modified.
  /// [uploadedOn] When the certificate was uploaded to Cloudflare.
  /// [zoneId] Identifier.
  const GetCustomOriginTrustStoreResult({
    this.certificate,
    this.customOriginTrustStoreId,
    this.expiresOn,
    this.filter,
    this.id,
    this.issuer,
    this.signature,
    this.status,
    this.updatedAt,
    this.uploadedOn,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'customOriginTrustStoreId': ?customOriginTrustStoreId,
      'expiresOn': ?expiresOn,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'issuer': ?issuer,
      'signature': ?signature,
      'status': ?status,
      'updatedAt': ?updatedAt,
      'uploadedOn': ?uploadedOn,
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomOriginTrustStoreResult.fromMap(Map<String, dynamic> map) {
    return GetCustomOriginTrustStoreResult(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customOriginTrustStoreId: (() { final guardedValue = map['customOriginTrustStoreId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetCustomOriginTrustStoreFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signature: (() { final guardedValue = map['signature']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploadedOn: (() { final guardedValue = map['uploadedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
