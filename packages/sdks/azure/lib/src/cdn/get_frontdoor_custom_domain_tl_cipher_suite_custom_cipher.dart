// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrontdoorCustomDomainTlCipherSuiteCustomCipher {
  /// A set of TLS 1.2 cipher suites.
  final pulumi.Input<List<String>> tls12s;
  /// A set of TLS 1.3 cipher suites.
  final pulumi.Input<List<String>> tls13s;

  /// Creates a new [GetFrontdoorCustomDomainTlCipherSuiteCustomCipher].
  /// [tls12s] A set of TLS 1.2 cipher suites.
  /// [tls13s] A set of TLS 1.3 cipher suites.
  const GetFrontdoorCustomDomainTlCipherSuiteCustomCipher({
    required this.tls12s,
    required this.tls13s,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tls12s': tls12s,
      'tls13s': tls13s,
    };
  }

  factory GetFrontdoorCustomDomainTlCipherSuiteCustomCipher.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorCustomDomainTlCipherSuiteCustomCipher(
      tls12s: pulumi.Input.fromValue((map['tls12s'] as List).cast<String>()),
      tls13s: pulumi.Input.fromValue((map['tls13s'] as List).cast<String>()),
    );
  }
}
