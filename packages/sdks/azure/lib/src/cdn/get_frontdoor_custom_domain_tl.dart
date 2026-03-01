// ignore_for_file: unused_element, unnecessary_cast


class GetFrontdoorCustomDomainTl {
  /// The Resource ID of the Front Door Secret.
  final String cdnFrontdoorSecretId;
  /// The SSL certificate type.
  final String certificateType;
  /// The TLS protocol version that will be used for Https connections.
  final String minimumTlsVersion;

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
      cdnFrontdoorSecretId: map['cdnFrontdoorSecretId'] as String,
      certificateType: map['certificateType'] as String,
      minimumTlsVersion: map['minimumTlsVersion'] as String,
    );
  }
}

