// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_custom_domain_tl_cipher_suite_custom_cipher.dart';

class GetFrontdoorCustomDomainTlCipherSuite {
  /// A `customCiphers` block as defined below.
  final pulumi.Input<List<GetFrontdoorCustomDomainTlCipherSuiteCustomCipher>> customCiphers;
  /// The TLS policy type used for this Front Door Custom Domain.
  final pulumi.Input<String> type;

  /// Creates a new [GetFrontdoorCustomDomainTlCipherSuite].
  /// [customCiphers] A `customCiphers` block as defined below.
  /// [type] The TLS policy type used for this Front Door Custom Domain.
  const GetFrontdoorCustomDomainTlCipherSuite({
    required this.customCiphers,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customCiphers': pulumi.Input.mapInputValue<List<GetFrontdoorCustomDomainTlCipherSuiteCustomCipher>, List<Map<String, dynamic>>>(customCiphers, (value) => pulumi.Input.encodeList<GetFrontdoorCustomDomainTlCipherSuiteCustomCipher, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory GetFrontdoorCustomDomainTlCipherSuite.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorCustomDomainTlCipherSuite(
      customCiphers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorCustomDomainTlCipherSuiteCustomCipher>(map['customCiphers']!, (value) => GetFrontdoorCustomDomainTlCipherSuiteCustomCipher.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
