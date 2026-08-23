// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_custom_domain_tl_cipher_suite.dart';

class GetFrontdoorCustomDomainTl {
  /// The Resource ID of the Front Door Secret.
  final pulumi.Input<String> cdnFrontdoorSecretId;
  /// The SSL certificate type.
  final pulumi.Input<String> certificateType;
  /// A `cipherSuite` block as defined below.
  final pulumi.Input<List<GetFrontdoorCustomDomainTlCipherSuite>> cipherSuites;
  final pulumi.Input<String> minimumTlsVersion;
  /// The TLS protocol version that will be used for Https connections.
  final pulumi.Input<String> minimumVersion;

  /// Creates a new [GetFrontdoorCustomDomainTl].
  /// [cdnFrontdoorSecretId] The Resource ID of the Front Door Secret.
  /// [certificateType] The SSL certificate type.
  /// [cipherSuites] A `cipherSuite` block as defined below.
  /// [minimumTlsVersion] Required.
  /// [minimumVersion] The TLS protocol version that will be used for Https connections.
  const GetFrontdoorCustomDomainTl({
    required this.cdnFrontdoorSecretId,
    required this.certificateType,
    required this.cipherSuites,
    required this.minimumTlsVersion,
    required this.minimumVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorSecretId': cdnFrontdoorSecretId,
      'certificateType': certificateType,
      'cipherSuites': pulumi.Input.mapInputValue<List<GetFrontdoorCustomDomainTlCipherSuite>, List<Map<String, dynamic>>>(cipherSuites, (value) => pulumi.Input.encodeList<GetFrontdoorCustomDomainTlCipherSuite, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minimumTlsVersion': minimumTlsVersion,
      'minimumVersion': minimumVersion,
    };
  }

  factory GetFrontdoorCustomDomainTl.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorCustomDomainTl(
      cdnFrontdoorSecretId: pulumi.Input.fromValue(map['cdnFrontdoorSecretId'] as String),
      certificateType: pulumi.Input.fromValue(map['certificateType'] as String),
      cipherSuites: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFrontdoorCustomDomainTlCipherSuite>(map['cipherSuites']!, (value) => GetFrontdoorCustomDomainTlCipherSuite.fromMap((value as Map).cast<String, dynamic>()))),
      minimumTlsVersion: pulumi.Input.fromValue(map['minimumTlsVersion'] as String),
      minimumVersion: pulumi.Input.fromValue(map['minimumVersion'] as String),
    );
  }
}
