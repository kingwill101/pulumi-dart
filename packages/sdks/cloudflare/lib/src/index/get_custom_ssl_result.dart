// ignore_for_file: unused_element, unnecessary_cast

import 'get_custom_ssl_filter.dart';
import 'get_custom_ssl_geo_restrictions.dart';
import 'get_custom_ssl_keyless_server.dart';

/// Result data returned by getCustomSsl.
class GetCustomSslResult {
  /// A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// Available values: "ubiquitous", "optimal", "force".
  final String? bundleMethod;
  /// Identifier.
  final String? customCertificateId;
  /// The identifier for the Custom CSR that was used.
  final String? customCsrId;
  /// When the certificate from the authority expires.
  final String? expiresOn;
  final GetCustomSslFilter? filter;
  /// Specify the region where your private key can be held locally for optimal TLS performance. HTTPS connections to any excluded data center will still be fully encrypted, but will incur some latency while Keyless SSL is used to complete the handshake with the nearest allowed data center. Options allow distribution to only to U.S. data centers, only to E.U. data centers, or only to highest security data centers. Default distribution is to all Cloudflare datacenters, for optimal performance.
  final GetCustomSslGeoRestrictions? geoRestrictions;
  final List<String>? hosts;
  /// Identifier.
  final String? id;
  /// The certificate authority that issued the certificate.
  final String? issuer;
  final GetCustomSslKeylessServer? keylessServer;
  /// When the certificate was last modified.
  final String? modifiedOn;
  /// The policy restrictions returned by the API. This field is returned in responses
  /// when a policy has been set. The API accepts the "policy" field in requests but
  /// returns this field as "policyRestrictions" in responses.
  final String? policyRestrictions;
  final double? priority;
  final String? signature;
  final String? status;
  final String? uploadedOn;
  /// Identifier.
  final String? zoneId;

  /// Creates a new [GetCustomSslResult].
  /// [bundleMethod] A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// [customCertificateId] Identifier.
  /// [customCsrId] The identifier for the Custom CSR that was used.
  /// [expiresOn] When the certificate from the authority expires.
  /// [filter] Optional.
  /// [geoRestrictions] Specify the region where your private key can be held locally for optimal TLS performance. HTTPS connections to any excluded data center will still be fully encrypted, but will incur some latency while Keyless SSL is used to complete the handshake with the nearest allowed data center. Options allow distribution to only to U.S. data centers, only to E.U. data centers, or only to highest security data centers. Default distribution is to all Cloudflare datacenters, for optimal performance.
  /// [hosts] Optional.
  /// [id] Identifier.
  /// [issuer] The certificate authority that issued the certificate.
  /// [keylessServer] Optional.
  /// [modifiedOn] When the certificate was last modified.
  /// [policyRestrictions] The policy restrictions returned by the API. This field is returned in responses
  /// [priority] Optional.
  /// [signature] Optional.
  /// [status] Optional.
  /// [uploadedOn] Optional.
  /// [zoneId] Identifier.
  const GetCustomSslResult({
    this.bundleMethod,
    this.customCertificateId,
    this.customCsrId,
    this.expiresOn,
    this.filter,
    this.geoRestrictions,
    this.hosts,
    this.id,
    this.issuer,
    this.keylessServer,
    this.modifiedOn,
    this.policyRestrictions,
    this.priority,
    this.signature,
    this.status,
    this.uploadedOn,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleMethod': ?bundleMethod,
      'customCertificateId': ?customCertificateId,
      'customCsrId': ?customCsrId,
      'expiresOn': ?expiresOn,
      'filter': ?filter?.toMap(),
      'geoRestrictions': ?geoRestrictions?.toMap(),
      'hosts': ?hosts,
      'id': ?id,
      'issuer': ?issuer,
      'keylessServer': ?keylessServer?.toMap(),
      'modifiedOn': ?modifiedOn,
      'policyRestrictions': ?policyRestrictions,
      'priority': ?priority,
      'signature': ?signature,
      'status': ?status,
      'uploadedOn': ?uploadedOn,
      'zoneId': ?zoneId,
    };
  }

  factory GetCustomSslResult.fromMap(Map<String, dynamic> map) {
    return GetCustomSslResult(
      bundleMethod: (() { final guardedValue = map['bundleMethod']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customCertificateId: (() { final guardedValue = map['customCertificateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customCsrId: (() { final guardedValue = map['customCsrId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetCustomSslFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      geoRestrictions: (() { final guardedValue = map['geoRestrictions']; if (guardedValue == null) return null; return GetCustomSslGeoRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keylessServer: (() { final guardedValue = map['keylessServer']; if (guardedValue == null) return null; return GetCustomSslKeylessServer.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyRestrictions: (() { final guardedValue = map['policyRestrictions']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      signature: (() { final guardedValue = map['signature']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploadedOn: (() { final guardedValue = map['uploadedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
