// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sys_ocsp_ocsp_args_doc}
/// The set of arguments for Ocsp.
/// {@endtemplate}
/// {@macro pulumi_sys_ocsp_ocsp_args_doc}
class OcspArgs {
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
  final pulumi.Input<String> name;
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

  /// Creates a new [OcspArgs].
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
  const OcspArgs({
    this.cacheErrorTimeout,
    this.cacheTimeout,
    this.clockSkew,
    this.concurrentConnectionsLimit,
    this.connectionTimeout,
    this.dnsResolver,
    required this.name,
    this.passphrase,
    this.proxyServerPool,
    this.responderUrl,
    this.routeDomain,
    this.signHash,
    this.signerCert,
    this.signerKey,
    this.statusAge,
    this.strictRespCertCheck,
    this.trustedResponders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheErrorTimeout': ?cacheErrorTimeout,
      'cacheTimeout': ?cacheTimeout,
      'clockSkew': ?clockSkew,
      'concurrentConnectionsLimit': ?concurrentConnectionsLimit,
      'connectionTimeout': ?connectionTimeout,
      'dnsResolver': ?dnsResolver,
      'name': name,
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

  factory OcspArgs.fromMap(Map<String, dynamic> map) {
    return OcspArgs(
      cacheErrorTimeout: (() { final guardedValue = map['cacheErrorTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cacheTimeout: (() { final guardedValue = map['cacheTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clockSkew: (() { final guardedValue = map['clockSkew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      concurrentConnectionsLimit: (() { final guardedValue = map['concurrentConnectionsLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      connectionTimeout: (() { final guardedValue = map['connectionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dnsResolver: (() { final guardedValue = map['dnsResolver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      passphrase: (() { final guardedValue = map['passphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyServerPool: (() { final guardedValue = map['proxyServerPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responderUrl: (() { final guardedValue = map['responderUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeDomain: (() { final guardedValue = map['routeDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signHash: (() { final guardedValue = map['signHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signerCert: (() { final guardedValue = map['signerCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signerKey: (() { final guardedValue = map['signerKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statusAge: (() { final guardedValue = map['statusAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      strictRespCertCheck: (() { final guardedValue = map['strictRespCertCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustedResponders: (() { final guardedValue = map['trustedResponders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

