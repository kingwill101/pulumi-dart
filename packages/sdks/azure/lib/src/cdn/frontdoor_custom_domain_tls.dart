// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontdoorCustomDomainTls {
  /// Resource ID of the Front Door Secret.
  final pulumi.Input<String>? cdnFrontdoorSecretId;
  /// Defines the source of the SSL certificate. Possible values include `CustomerCertificate` and `ManagedCertificate`. Defaults to `ManagedCertificate`.
  ///
  /// &gt; **Note:** It may take up to 15 minutes for the Front Door Service to validate the state and Domain ownership of the Custom Domain.
  final pulumi.Input<String>? certificateType;
  /// TLS protocol version that will be used for Https. Possible values are `TLS12`. Defaults to `TLS12`.
  ///
  /// &gt; **Note:** On March 1, 2025, support for Transport Layer Security (TLS) 1.0 and 1.1 will be retired for Azure Front Door, all connections to Azure Front Door must employ `TLS 1.2` or later, please see the product [announcement](https://azure.microsoft.com/en-us/updates/v2/update-retirement-tls1-0-tls1-1-versions-azure-services/) for more details.
  final pulumi.Input<String>? minimumTlsVersion;

  /// Creates a new [FrontdoorCustomDomainTls].
  /// [cdnFrontdoorSecretId] Resource ID of the Front Door Secret.
  /// [certificateType] Defines the source of the SSL certificate. Possible values include `CustomerCertificate` and `ManagedCertificate`. Defaults to `ManagedCertificate`.
  /// [minimumTlsVersion] TLS protocol version that will be used for Https. Possible values are `TLS12`. Defaults to `TLS12`.
  const FrontdoorCustomDomainTls({
    this.cdnFrontdoorSecretId,
    this.certificateType,
    this.minimumTlsVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorSecretId': ?cdnFrontdoorSecretId,
      'certificateType': ?certificateType,
      'minimumTlsVersion': ?minimumTlsVersion,
    };
  }

  factory FrontdoorCustomDomainTls.fromMap(Map<String, dynamic> map) {
    return FrontdoorCustomDomainTls(
      cdnFrontdoorSecretId: (() { final guardedValue = map['cdnFrontdoorSecretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateType: (() { final guardedValue = map['certificateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

