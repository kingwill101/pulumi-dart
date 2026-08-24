// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_ssl_geo_restrictions.dart';
import 'custom_ssl_keyless_server.dart';

/// Input properties used for looking up and filtering CustomSsl resources.
class CustomSslState {
  /// A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// Available values: "ubiquitous", "optimal", "force".
  final pulumi.Input<String?>? bundleMethod;
  /// The zone's SSL certificate or certificate and the intermediate(s).
  final pulumi.Input<String?>? certificate;
  /// The identifier for the Custom CSR that was used.
  final pulumi.Input<String?>? customCsrId;
  /// The environment to deploy the certificate to.
  /// Available values: "staging", "production".
  final pulumi.Input<String?>? deploy;
  /// When the certificate from the authority expires.
  final pulumi.Input<String?>? expiresOn;
  /// Specify the region where your private key can be held locally for optimal TLS performance. HTTPS connections to any excluded data center will still be fully encrypted, but will incur some latency while Keyless SSL is used to complete the handshake with the nearest allowed data center. Options allow distribution to only to U.S. data centers, only to E.U. data centers, or only to highest security data centers. Default distribution is to all Cloudflare datacenters, for optimal performance.
  final pulumi.Input<CustomSslGeoRestrictions?>? geoRestrictions;
  final pulumi.Input<List<String>?>? hosts;
  /// The certificate authority that issued the certificate.
  final pulumi.Input<String?>? issuer;
  final pulumi.Input<CustomSslKeylessServer?>? keylessServer;
  /// When the certificate was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// Specify the policy that determines the region where your private key will be held locally. HTTPS connections to any excluded data center will still be fully encrypted, but will incur some latency while Keyless SSL is used to complete the handshake with the nearest allowed data center. Any combination of countries, specified by their two letter country code (https://en.wikipedia.org/wiki/ISO*3166-1*alpha-2#Officially*assigned*code*elements) can be chosen, such as 'country: IN', as well as 'region: EU' which refers to the EU region. If there are too few data centers satisfying the policy, it will be rejected.
  /// Note: The API accepts this field as either "policy" or "policy*restrictions" in requests. Responses return this field as "policyRestrictions".
  final pulumi.Input<String?>? policy;
  /// The policy restrictions returned by the API. This field is returned in responses
  /// when a policy has been set. The API accepts the "policy" field in requests but
  /// returns this field as "policyRestrictions" in responses.
  final pulumi.Input<String?>? policyRestrictions;
  /// The order/priority in which the certificate will be used in a request. The higher priority will break ties across overlapping 'legacy_custom' certificates, but 'legacy_custom' certificates will always supercede 'sni_custom' certificates.
  final pulumi.Input<double?>? priority;
  /// The zone's private key.
  final pulumi.Input<String?>? privateKey;
  /// The type of hash used for the certificate.
  final pulumi.Input<String?>? signature;
  /// Status of the zone's custom SSL.
  /// Available values: "active", "expired", "deleted", "pending", "initializing".
  final pulumi.Input<String?>? status;
  /// The type 'legacy*custom' enables support for legacy clients which do not include SNI in the TLS handshake.
  /// Available values: "legacy*custom", "sniCustom".
  final pulumi.Input<String?>? type;
  /// When the certificate was uploaded to Cloudflare.
  final pulumi.Input<String?>? uploadedOn;
  /// Identifier.
  final pulumi.Input<String?>? zoneId;

  /// Creates a new [CustomSslState].
  /// [bundleMethod] A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// [certificate] The zone's SSL certificate or certificate and the intermediate(s).
  /// [customCsrId] The identifier for the Custom CSR that was used.
  /// [deploy] The environment to deploy the certificate to.
  /// [expiresOn] When the certificate from the authority expires.
  /// [geoRestrictions] Specify the region where your private key can be held locally for optimal TLS performance. HTTPS connections to any excluded data center will still be fully encrypted, but will incur some latency while Keyless SSL is used to complete the handshake with the nearest allowed data center. Options allow distribution to only to U.S. data centers, only to E.U. data centers, or only to highest security data centers. Default distribution is to all Cloudflare datacenters, for optimal performance.
  /// [hosts] Optional.
  /// [issuer] The certificate authority that issued the certificate.
  /// [keylessServer] Optional.
  /// [modifiedOn] When the certificate was last modified.
  /// [policy] Specify the policy that determines the region where your private key will be held locally. HTTPS connections to any excluded data center will still be fully encrypted, but will incur some latency while Keyless SSL is used to complete the handshake with the nearest allowed data center. Any combination of countries, specified by their two letter country code (https://en.wikipedia.org/wiki/ISO*3166-1*alpha-2#Officially*assigned*code*elements) can be chosen, such as 'country: IN', as well as 'region: EU' which refers to the EU region. If there are too few data centers satisfying the policy, it will be rejected.
  /// [policyRestrictions] The policy restrictions returned by the API. This field is returned in responses
  /// [priority] The order/priority in which the certificate will be used in a request. The higher priority will break ties across overlapping 'legacy_custom' certificates, but 'legacy_custom' certificates will always supercede 'sni_custom' certificates.
  /// [privateKey] The zone's private key.
  /// [signature] The type of hash used for the certificate.
  /// [status] Status of the zone's custom SSL.
  /// [type] The type 'legacy*custom' enables support for legacy clients which do not include SNI in the TLS handshake.
  /// [uploadedOn] When the certificate was uploaded to Cloudflare.
  /// [zoneId] Identifier.
  const CustomSslState({
    this.bundleMethod,
    this.certificate,
    this.customCsrId,
    this.deploy,
    this.expiresOn,
    this.geoRestrictions,
    this.hosts,
    this.issuer,
    this.keylessServer,
    this.modifiedOn,
    this.policy,
    this.policyRestrictions,
    this.priority,
    this.privateKey,
    this.signature,
    this.status,
    this.type,
    this.uploadedOn,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleMethod': ?bundleMethod,
      'certificate': ?certificate,
      'customCsrId': ?customCsrId,
      'deploy': ?deploy,
      'expiresOn': ?expiresOn,
      'geoRestrictions': ?pulumi.Input.mapOptionalInputValue<CustomSslGeoRestrictions, Map<String, dynamic>>(geoRestrictions, (value) => value.toMap()),
      'hosts': ?hosts,
      'issuer': ?issuer,
      'keylessServer': ?pulumi.Input.mapOptionalInputValue<CustomSslKeylessServer, Map<String, dynamic>>(keylessServer, (value) => value.toMap()),
      'modifiedOn': ?modifiedOn,
      'policy': ?policy,
      'policyRestrictions': ?policyRestrictions,
      'priority': ?priority,
      'privateKey': ?privateKey,
      'signature': ?signature,
      'status': ?status,
      'type': ?type,
      'uploadedOn': ?uploadedOn,
      'zoneId': ?zoneId,
    };
  }

  factory CustomSslState.fromMap(Map<String, dynamic> map) {
    return CustomSslState(
      bundleMethod: (() { final guardedValue = map['bundleMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customCsrId: (() { final guardedValue = map['customCsrId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploy: (() { final guardedValue = map['deploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      geoRestrictions: (() { final guardedValue = map['geoRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomSslGeoRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keylessServer: (() { final guardedValue = map['keylessServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomSslKeylessServer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyRestrictions: (() { final guardedValue = map['policyRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signature: (() { final guardedValue = map['signature']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploadedOn: (() { final guardedValue = map['uploadedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
