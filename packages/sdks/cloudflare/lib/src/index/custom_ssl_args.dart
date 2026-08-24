// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_ssl_geo_restrictions.dart';

/// {@template pulumi_index_custom_ssl_custom_ssl_args_doc}
/// The set of arguments for CustomSsl.
/// {@endtemplate}
/// {@macro pulumi_index_custom_ssl_custom_ssl_args_doc}
class CustomSslArgs {
  /// A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// Available values: "ubiquitous", "optimal", "force".
  final pulumi.Input<String?>? bundleMethod;
  /// The zone's SSL certificate or certificate and the intermediate(s).
  final pulumi.Input<String> certificate;
  /// The identifier for the Custom CSR that was used.
  final pulumi.Input<String?>? customCsrId;
  /// The environment to deploy the certificate to.
  /// Available values: "staging", "production".
  final pulumi.Input<String?>? deploy;
  /// Specify the region where your private key can be held locally for optimal TLS performance. HTTPS connections to any excluded data center will still be fully encrypted, but will incur some latency while Keyless SSL is used to complete the handshake with the nearest allowed data center. Options allow distribution to only to U.S. data centers, only to E.U. data centers, or only to highest security data centers. Default distribution is to all Cloudflare datacenters, for optimal performance.
  final pulumi.Input<CustomSslGeoRestrictions?>? geoRestrictions;
  /// Specify the policy that determines the region where your private key will be held locally. HTTPS connections to any excluded data center will still be fully encrypted, but will incur some latency while Keyless SSL is used to complete the handshake with the nearest allowed data center. Any combination of countries, specified by their two letter country code (https://en.wikipedia.org/wiki/ISO*3166-1*alpha-2#Officially*assigned*code*elements) can be chosen, such as 'country: IN', as well as 'region: EU' which refers to the EU region. If there are too few data centers satisfying the policy, it will be rejected.
  /// Note: The API accepts this field as either "policy" or "policy*restrictions" in requests. Responses return this field as "policyRestrictions".
  final pulumi.Input<String?>? policy;
  /// The zone's private key.
  final pulumi.Input<String> privateKey;
  /// The type 'legacy*custom' enables support for legacy clients which do not include SNI in the TLS handshake.
  /// Available values: "legacy*custom", "sniCustom".
  final pulumi.Input<String?>? type;
  /// Identifier.
  final pulumi.Input<String> zoneId;

  /// Creates a new [CustomSslArgs].
  /// [bundleMethod] A ubiquitous bundle has the highest probability of being verified everywhere, even by clients using outdated or unusual trust stores. An optimal bundle uses the shortest chain and newest intermediates. And the force bundle verifies the chain, but does not otherwise modify it.
  /// [certificate] The zone's SSL certificate or certificate and the intermediate(s).
  /// [customCsrId] The identifier for the Custom CSR that was used.
  /// [deploy] The environment to deploy the certificate to.
  /// [geoRestrictions] Specify the region where your private key can be held locally for optimal TLS performance. HTTPS connections to any excluded data center will still be fully encrypted, but will incur some latency while Keyless SSL is used to complete the handshake with the nearest allowed data center. Options allow distribution to only to U.S. data centers, only to E.U. data centers, or only to highest security data centers. Default distribution is to all Cloudflare datacenters, for optimal performance.
  /// [policy] Specify the policy that determines the region where your private key will be held locally. HTTPS connections to any excluded data center will still be fully encrypted, but will incur some latency while Keyless SSL is used to complete the handshake with the nearest allowed data center. Any combination of countries, specified by their two letter country code (https://en.wikipedia.org/wiki/ISO*3166-1*alpha-2#Officially*assigned*code*elements) can be chosen, such as 'country: IN', as well as 'region: EU' which refers to the EU region. If there are too few data centers satisfying the policy, it will be rejected.
  /// [privateKey] The zone's private key.
  /// [type] The type 'legacy*custom' enables support for legacy clients which do not include SNI in the TLS handshake.
  /// [zoneId] Identifier.
  const CustomSslArgs({
    this.bundleMethod,
    required this.certificate,
    this.customCsrId,
    this.deploy,
    this.geoRestrictions,
    this.policy,
    required this.privateKey,
    this.type,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleMethod': ?bundleMethod,
      'certificate': certificate,
      'customCsrId': ?customCsrId,
      'deploy': ?deploy,
      'geoRestrictions': ?pulumi.Input.mapOptionalInputValue<CustomSslGeoRestrictions, Map<String, dynamic>>(geoRestrictions, (value) => value.toMap()),
      'policy': ?policy,
      'privateKey': privateKey,
      'type': ?type,
      'zoneId': zoneId,
    };
  }

  factory CustomSslArgs.fromMap(Map<String, dynamic> map) {
    return CustomSslArgs(
      bundleMethod: (() { final guardedValue = map['bundleMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: pulumi.Input.fromValue(map['certificate'] as String),
      customCsrId: (() { final guardedValue = map['customCsrId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploy: (() { final guardedValue = map['deploy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      geoRestrictions: (() { final guardedValue = map['geoRestrictions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomSslGeoRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: pulumi.Input.fromValue(map['privateKey'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
