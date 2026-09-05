// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_custom_domain_tls_cipher_suite_custom_ciphers.dart';

class FrontdoorCustomDomainTlsCipherSuite {
  /// A `customCiphers` block as defined below.
  ///
  /// &gt; **Note:** The `customCiphers` block is required when `type` is set to `Customized` and must not be specified otherwise.
  final pulumi.Input<FrontdoorCustomDomainTlsCipherSuiteCustomCiphers?>? customCiphers;
  /// The cipher suite set type. Possible values are `Customized`, `TLS12_2022`, and `TLS12_2023`.
  final pulumi.Input<String> type;

  /// Creates a new [FrontdoorCustomDomainTlsCipherSuite].
  /// [customCiphers] A `customCiphers` block as defined below.
  /// [type] The cipher suite set type. Possible values are `Customized`, `TLS12_2022`, and `TLS12_2023`.
  const FrontdoorCustomDomainTlsCipherSuite({
    this.customCiphers,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customCiphers': ?pulumi.Input.mapOptionalInputValue<FrontdoorCustomDomainTlsCipherSuiteCustomCiphers, Map<String, dynamic>>(customCiphers, (value) => value.toMap()),
      'type': type,
    };
  }

  factory FrontdoorCustomDomainTlsCipherSuite.fromMap(Map<String, dynamic> map) {
    return FrontdoorCustomDomainTlsCipherSuite(
      customCiphers: (() { final guardedValue = map['customCiphers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorCustomDomainTlsCipherSuiteCustomCiphers.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
