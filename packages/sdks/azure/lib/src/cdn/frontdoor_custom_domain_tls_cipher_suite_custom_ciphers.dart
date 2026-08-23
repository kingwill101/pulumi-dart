// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorCustomDomainTlsCipherSuiteCustomCiphers {
  /// A set of TLS 1.2 cipher suites. Possible values are `ECDHE_RSA_AES128_GCM_SHA256`, `ECDHE_RSA_AES128_SHA256`, `ECDHE_RSA_AES256_GCM_SHA384`, and `ECDHE_RSA_AES256_SHA384`.
  ///
  /// &gt; **Note:** At least one TLS 1.2 cipher suite must be specified in `tls12` when `minimumVersion` is `TLS12` and `type` is `Customized`.
  final pulumi.Input<List<String>>? tls12s;
  /// A set of TLS 1.3 cipher suites. Possible values are `TLS_AES_128_GCM_SHA256` and `TLS_AES_256_GCM_SHA384`.
  ///
  /// &gt; **Note:** When `tls13` is specified, it must include both `TLS_AES_128_GCM_SHA256` and `TLS_AES_256_GCM_SHA384`.
  final pulumi.Input<List<String>>? tls13s;

  /// Creates a new [FrontdoorCustomDomainTlsCipherSuiteCustomCiphers].
  /// [tls12s] A set of TLS 1.2 cipher suites. Possible values are `ECDHE_RSA_AES128_GCM_SHA256`, `ECDHE_RSA_AES128_SHA256`, `ECDHE_RSA_AES256_GCM_SHA384`, and `ECDHE_RSA_AES256_SHA384`.
  /// [tls13s] A set of TLS 1.3 cipher suites. Possible values are `TLS_AES_128_GCM_SHA256` and `TLS_AES_256_GCM_SHA384`.
  const FrontdoorCustomDomainTlsCipherSuiteCustomCiphers({
    this.tls12s,
    this.tls13s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tls12s': ?tls12s,
      'tls13s': ?tls13s,
    };
  }

  factory FrontdoorCustomDomainTlsCipherSuiteCustomCiphers.fromMap(Map<String, dynamic> map) {
    return FrontdoorCustomDomainTlsCipherSuiteCustomCiphers(
      tls12s: (() { final guardedValue = map['tls12s']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tls13s: (() { final guardedValue = map['tls13s']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
