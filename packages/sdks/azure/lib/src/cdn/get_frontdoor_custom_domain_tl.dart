// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFrontdoorCustomDomainTl {
  /// The Resource ID of the Front Door Secret.
  final pulumi.Input<String> cdnFrontdoorSecretId;
  /// The SSL certificate type.
  final pulumi.Input<String> certificateType;
  /// The TLS protocol version that will be used for Https connections.
  final pulumi.Input<String> minimumTlsVersion;

  /// Creates a new [GetFrontdoorCustomDomainTl].
  /// [cdnFrontdoorSecretId] The Resource ID of the Front Door Secret.
  /// [certificateType] The SSL certificate type.
  /// [minimumTlsVersion] The TLS protocol version that will be used for Https connections.
  GetFrontdoorCustomDomainTl({
    required this.cdnFrontdoorSecretId,
    required this.certificateType,
    required this.minimumTlsVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorSecretId': cdnFrontdoorSecretId,
      'certificateType': certificateType,
      'minimumTlsVersion': minimumTlsVersion,
    };
  }

  factory GetFrontdoorCustomDomainTl.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorCustomDomainTl(
      cdnFrontdoorSecretId: (map['cdnFrontdoorSecretId'] as String).input(),
      certificateType: (map['certificateType'] as String).input(),
      minimumTlsVersion: (map['minimumTlsVersion'] as String).input(),
    );
  }
}

