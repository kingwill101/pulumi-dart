// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_ssls_result_geo_restrictions.dart';
import 'get_custom_ssls_result_keyless_server.dart';

class GetCustomSslsResult {
  /// A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// Available values: "ubiquitous", "optimal", "force".
  final pulumi.Input<String> bundleMethod;
  /// The identifier for the Custom CSR that was used.
  final pulumi.Input<String> customCsrId;
  /// When the certificate from the authority expires.
  final pulumi.Input<String> expiresOn;
  /// Specify the region where your private key can be held locally for optimal TLS performance. HTTPS connections to any excluded data center will still be fully encrypted, but will incur some latency while Keyless SSL is used to complete the handshake with the nearest allowed data center. Options allow distribution to only to U.S. data centers, only to E.U. data centers, or only to highest security data centers. Default distribution is to all Cloudflare datacenters, for optimal performance.
  final pulumi.Input<GetCustomSslsResultGeoRestrictions> geoRestrictions;
  final pulumi.Input<List<String>> hosts;
  /// Identifier.
  final pulumi.Input<String> id;
  /// The certificate authority that issued the certificate.
  final pulumi.Input<String> issuer;
  final pulumi.Input<GetCustomSslsResultKeylessServer> keylessServer;
  /// When the certificate was last modified.
  final pulumi.Input<String> modifiedOn;
  /// The policy restrictions returned by the API. This field is returned in responses
  /// when a policy has been set. The API accepts the "policy" field in requests but
  /// returns this field as "policyRestrictions" in responses.
  final pulumi.Input<String> policyRestrictions;
  /// The order/priority in which the certificate will be used in a request. The higher priority will break ties across overlapping 'legacy_custom' certificates, but 'legacy_custom' certificates will always supercede 'sni_custom' certificates.
  final pulumi.Input<double> priority;
  /// The type of hash used for the certificate.
  final pulumi.Input<String> signature;
  /// Status of the zone's custom SSL.
  /// Available values: "active", "expired", "deleted", "pending", "initializing".
  final pulumi.Input<String> status;
  /// When the certificate was uploaded to Cloudflare.
  final pulumi.Input<String> uploadedOn;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetCustomSslsResult].
  /// [bundleMethod] A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// [customCsrId] The identifier for the Custom CSR that was used.
  /// [expiresOn] When the certificate from the authority expires.
  /// [geoRestrictions] Specify the region where your private key can be held locally for optimal TLS performance. HTTPS connections to any excluded data center will still be fully encrypted, but will incur some latency while Keyless SSL is used to complete the handshake with the nearest allowed data center. Options allow distribution to only to U.S. data centers, only to E.U. data centers, or only to highest security data centers. Default distribution is to all Cloudflare datacenters, for optimal performance.
  /// [hosts] Required.
  /// [id] Identifier.
  /// [issuer] The certificate authority that issued the certificate.
  /// [keylessServer] Required.
  /// [modifiedOn] When the certificate was last modified.
  /// [policyRestrictions] The policy restrictions returned by the API. This field is returned in responses
  /// [priority] The order/priority in which the certificate will be used in a request. The higher priority will break ties across overlapping 'legacy_custom' certificates, but 'legacy_custom' certificates will always supercede 'sni_custom' certificates.
  /// [signature] The type of hash used for the certificate.
  /// [status] Status of the zone's custom SSL.
  /// [uploadedOn] When the certificate was uploaded to Cloudflare.
  /// [zoneId] Identifier.
  const GetCustomSslsResult({
    required this.bundleMethod,
    required this.customCsrId,
    required this.expiresOn,
    required this.geoRestrictions,
    required this.hosts,
    required this.id,
    required this.issuer,
    required this.keylessServer,
    required this.modifiedOn,
    required this.policyRestrictions,
    required this.priority,
    required this.signature,
    required this.status,
    required this.uploadedOn,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleMethod': bundleMethod,
      'customCsrId': customCsrId,
      'expiresOn': expiresOn,
      'geoRestrictions': pulumi.Input.mapInputValue<GetCustomSslsResultGeoRestrictions, Map<String, dynamic>>(geoRestrictions, (value) => value.toMap()),
      'hosts': hosts,
      'id': id,
      'issuer': issuer,
      'keylessServer': pulumi.Input.mapInputValue<GetCustomSslsResultKeylessServer, Map<String, dynamic>>(keylessServer, (value) => value.toMap()),
      'modifiedOn': modifiedOn,
      'policyRestrictions': policyRestrictions,
      'priority': priority,
      'signature': signature,
      'status': status,
      'uploadedOn': uploadedOn,
      'zoneId': zoneId,
    };
  }

  factory GetCustomSslsResult.fromMap(Map<String, dynamic> map) {
    return GetCustomSslsResult(
      bundleMethod: pulumi.Input.fromValue(map['bundleMethod'] as String),
      customCsrId: pulumi.Input.fromValue(map['customCsrId'] as String),
      expiresOn: pulumi.Input.fromValue(map['expiresOn'] as String),
      geoRestrictions: pulumi.Input.fromValue(GetCustomSslsResultGeoRestrictions.fromMap((map['geoRestrictions']! as Map).cast<String, dynamic>())),
      hosts: pulumi.Input.fromValue((map['hosts'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      keylessServer: pulumi.Input.fromValue(GetCustomSslsResultKeylessServer.fromMap((map['keylessServer']! as Map).cast<String, dynamic>())),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      policyRestrictions: pulumi.Input.fromValue(map['policyRestrictions'] as String),
      priority: pulumi.Input.fromValue((map['priority'] as num).toDouble()),
      signature: pulumi.Input.fromValue(map['signature'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      uploadedOn: pulumi.Input.fromValue(map['uploadedOn'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
