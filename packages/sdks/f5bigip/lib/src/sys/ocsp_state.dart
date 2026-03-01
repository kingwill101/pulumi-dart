// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ocsp resources.
class OcspState {
  /// Specifies the lifetime of an error response in the cache, in seconds. This value must be greater than connection_timeout. The default value is `3600`.
  final pulumi.Input<int>? cacheErrorTimeout;
  /// Specifies the lifetime of the OCSP response in the cache, in seconds. The default value is `indefinite`.
  final pulumi.Input<String>? cacheTimeout;
  /// Specifies the time interval that the BIG-IP system allows for clock skew, in seconds. The default value is `300`.
  final pulumi.Input<int>? clockSkew;
  /// Specifies the maximum number of connections per second allowed for the OCSP certificate validator. The default value is `50`.
  final pulumi.Input<int>? concurrentConnectionsLimit;
  /// Specifies the time interval that the BIG-IP system waits for before ending the connection to the OCSP responder, in seconds. The default value is `8`.
  final pulumi.Input<int>? connectionTimeout;
  /// Specifies the internal DNS resolver the BIG-IP system uses to fetch the OCSP response.
  final pulumi.Input<String>? dnsResolver;
  /// Name of the OCSP Responder. Name should be in pattern `/partition/ocsp_name`.
  final pulumi.Input<String>? name;
  /// Specifies a passphrase used to sign an OCSP request.
  final pulumi.Input<String>? passphrase;
  /// Specifies the proxy server pool the BIG-IP system uses to fetch the OCSP response.
  final pulumi.Input<String>? proxyServerPool;
  /// Specifies the URL of the OCSP responder.
  final pulumi.Input<String>? responderUrl;
  /// Specifies the route domain for the OCSP responder.
  final pulumi.Input<String>? routeDomain;
  /// Specifies the hash algorithm used to sign the OCSP request. The default value is `sha256`.
  final pulumi.Input<String>? signHash;
  /// Specifies the certificate used to sign the OCSP request.
  final pulumi.Input<String>? signerCert;
  /// Specifies the key used to sign the OCSP request.
  final pulumi.Input<String>? signerKey;
  /// Specifies the maximum allowed lag time that the BIG-IP system accepts for the 'thisUpdate' time in the OCSP response, in seconds. The default value is `0`.
  final pulumi.Input<int>? statusAge;
  /// Specifies whether the responder's certificate is checked for an OCSP signing extension. The default value is `enabled`.
  final pulumi.Input<String>? strictRespCertCheck;
  /// Specifies the certificates used for validating the OCSP response.
  final pulumi.Input<String>? trustedResponders;

  /// Creates a new [OcspState].
  /// [cacheErrorTimeout] Specifies the lifetime of an error response in the cache, in seconds. This value must be greater than connection_timeout. The default value is `3600`.
  /// [cacheTimeout] Specifies the lifetime of the OCSP response in the cache, in seconds. The default value is `indefinite`.
  /// [clockSkew] Specifies the time interval that the BIG-IP system allows for clock skew, in seconds. The default value is `300`.
  /// [concurrentConnectionsLimit] Specifies the maximum number of connections per second allowed for the OCSP certificate validator. The default value is `50`.
  /// [connectionTimeout] Specifies the time interval that the BIG-IP system waits for before ending the connection to the OCSP responder, in seconds. The default value is `8`.
  /// [dnsResolver] Specifies the internal DNS resolver the BIG-IP system uses to fetch the OCSP response.
  /// [name] Name of the OCSP Responder. Name should be in pattern `/partition/ocsp_name`.
  /// [passphrase] Specifies a passphrase used to sign an OCSP request.
  /// [proxyServerPool] Specifies the proxy server pool the BIG-IP system uses to fetch the OCSP response.
  /// [responderUrl] Specifies the URL of the OCSP responder.
  /// [routeDomain] Specifies the route domain for the OCSP responder.
  /// [signHash] Specifies the hash algorithm used to sign the OCSP request. The default value is `sha256`.
  /// [signerCert] Specifies the certificate used to sign the OCSP request.
  /// [signerKey] Specifies the key used to sign the OCSP request.
  /// [statusAge] Specifies the maximum allowed lag time that the BIG-IP system accepts for the 'thisUpdate' time in the OCSP response, in seconds. The default value is `0`.
  /// [strictRespCertCheck] Specifies whether the responder's certificate is checked for an OCSP signing extension. The default value is `enabled`.
  /// [trustedResponders] Specifies the certificates used for validating the OCSP response.
  OcspState({
    pulumi.Output<int>? cacheErrorTimeout,
    pulumi.Output<String>? cacheTimeout,
    pulumi.Output<int>? clockSkew,
    pulumi.Output<int>? concurrentConnectionsLimit,
    pulumi.Output<int>? connectionTimeout,
    pulumi.Output<String>? dnsResolver,
    pulumi.Output<String>? name,
    pulumi.Output<String>? passphrase,
    pulumi.Output<String>? proxyServerPool,
    pulumi.Output<String>? responderUrl,
    pulumi.Output<String>? routeDomain,
    pulumi.Output<String>? signHash,
    pulumi.Output<String>? signerCert,
    pulumi.Output<String>? signerKey,
    pulumi.Output<int>? statusAge,
    pulumi.Output<String>? strictRespCertCheck,
    pulumi.Output<String>? trustedResponders,
  }) :
      cacheErrorTimeout = pulumi.Input.asOptionalInput<int>(cacheErrorTimeout),
      cacheTimeout = pulumi.Input.asOptionalInput<String>(cacheTimeout),
      clockSkew = pulumi.Input.asOptionalInput<int>(clockSkew),
      concurrentConnectionsLimit = pulumi.Input.asOptionalInput<int>(concurrentConnectionsLimit),
      connectionTimeout = pulumi.Input.asOptionalInput<int>(connectionTimeout),
      dnsResolver = pulumi.Input.asOptionalInput<String>(dnsResolver),
      name = pulumi.Input.asOptionalInput<String>(name),
      passphrase = pulumi.Input.asOptionalInput<String>(passphrase),
      proxyServerPool = pulumi.Input.asOptionalInput<String>(proxyServerPool),
      responderUrl = pulumi.Input.asOptionalInput<String>(responderUrl),
      routeDomain = pulumi.Input.asOptionalInput<String>(routeDomain),
      signHash = pulumi.Input.asOptionalInput<String>(signHash),
      signerCert = pulumi.Input.asOptionalInput<String>(signerCert),
      signerKey = pulumi.Input.asOptionalInput<String>(signerKey),
      statusAge = pulumi.Input.asOptionalInput<int>(statusAge),
      strictRespCertCheck = pulumi.Input.asOptionalInput<String>(strictRespCertCheck),
      trustedResponders = pulumi.Input.asOptionalInput<String>(trustedResponders);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheErrorTimeout': ?cacheErrorTimeout,
      'cacheTimeout': ?cacheTimeout,
      'clockSkew': ?clockSkew,
      'concurrentConnectionsLimit': ?concurrentConnectionsLimit,
      'connectionTimeout': ?connectionTimeout,
      'dnsResolver': ?dnsResolver,
      'name': ?name,
      'passphrase': ?passphrase,
      'proxyServerPool': ?proxyServerPool,
      'responderUrl': ?responderUrl,
      'routeDomain': ?routeDomain,
      'signHash': ?signHash,
      'signerCert': ?signerCert,
      'signerKey': ?signerKey,
      'statusAge': ?statusAge,
      'strictRespCertCheck': ?strictRespCertCheck,
      'trustedResponders': ?trustedResponders,
    };
  }

  factory OcspState.fromMap(Map<String, dynamic> map) {
    return OcspState(
      cacheErrorTimeout: map['cacheErrorTimeout'] == null ? null : pulumi.Output.create<int>(map['cacheErrorTimeout'] as int),
      cacheTimeout: map['cacheTimeout'] == null ? null : pulumi.Output.create<String>(map['cacheTimeout'] as String),
      clockSkew: map['clockSkew'] == null ? null : pulumi.Output.create<int>(map['clockSkew'] as int),
      concurrentConnectionsLimit: map['concurrentConnectionsLimit'] == null ? null : pulumi.Output.create<int>(map['concurrentConnectionsLimit'] as int),
      connectionTimeout: map['connectionTimeout'] == null ? null : pulumi.Output.create<int>(map['connectionTimeout'] as int),
      dnsResolver: map['dnsResolver'] == null ? null : pulumi.Output.create<String>(map['dnsResolver'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      passphrase: map['passphrase'] == null ? null : pulumi.Output.create<String>(map['passphrase'] as String),
      proxyServerPool: map['proxyServerPool'] == null ? null : pulumi.Output.create<String>(map['proxyServerPool'] as String),
      responderUrl: map['responderUrl'] == null ? null : pulumi.Output.create<String>(map['responderUrl'] as String),
      routeDomain: map['routeDomain'] == null ? null : pulumi.Output.create<String>(map['routeDomain'] as String),
      signHash: map['signHash'] == null ? null : pulumi.Output.create<String>(map['signHash'] as String),
      signerCert: map['signerCert'] == null ? null : pulumi.Output.create<String>(map['signerCert'] as String),
      signerKey: map['signerKey'] == null ? null : pulumi.Output.create<String>(map['signerKey'] as String),
      statusAge: map['statusAge'] == null ? null : pulumi.Output.create<int>(map['statusAge'] as int),
      strictRespCertCheck: map['strictRespCertCheck'] == null ? null : pulumi.Output.create<String>(map['strictRespCertCheck'] as String),
      trustedResponders: map['trustedResponders'] == null ? null : pulumi.Output.create<String>(map['trustedResponders'] as String),
    );
  }
}

