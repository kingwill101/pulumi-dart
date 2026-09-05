// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_custom_domain_tls_cipher_suite.dart';

class FrontdoorCustomDomainTls {
  /// Resource ID of the Front Door Secret.
  ///
  /// &gt; **Note:** `cdnFrontdoorSecretId` must be specified when `certificateType` is `CustomerCertificate` and must not be specified when `certificateType` is `ManagedCertificate`.
  final pulumi.Input<String?>? cdnFrontdoorSecretId;
  /// Defines the source of the SSL certificate. Possible values are `CustomerCertificate` and `ManagedCertificate`. Defaults to `ManagedCertificate`.
  ///
  /// &gt; **Note:** It may take up to 15 minutes for the Front Door Service to validate the state and domain ownership of the Custom Domain.
  ///
  /// &gt; **Note:** When `certificateType` is `ManagedCertificate`, `hostName` must not exceed 64 characters. Azure Front Door supports managed certificates for apex and wildcard domains, but apex-domain certificate rotation can require revalidation of domain ownership and wildcard-domain managed certificates are not rotated automatically.
  final pulumi.Input<String?>? certificateType;
  /// A `cipherSuite` block as defined below.
  final pulumi.Input<FrontdoorCustomDomainTlsCipherSuite?>? cipherSuite;
  final pulumi.Input<String?>? minimumTlsVersion;
  /// TLS protocol version that will be used for HTTPS. The only possible value is `TLS12`. Defaults to `TLS12`.
  final pulumi.Input<String?>? minimumVersion;

  /// Creates a new [FrontdoorCustomDomainTls].
  /// [cdnFrontdoorSecretId] Resource ID of the Front Door Secret.
  /// [certificateType] Defines the source of the SSL certificate. Possible values are `CustomerCertificate` and `ManagedCertificate`. Defaults to `ManagedCertificate`.
  /// [cipherSuite] A `cipherSuite` block as defined below.
  /// [minimumTlsVersion] Optional.
  /// [minimumVersion] TLS protocol version that will be used for HTTPS. The only possible value is `TLS12`. Defaults to `TLS12`.
  const FrontdoorCustomDomainTls({
    this.cdnFrontdoorSecretId,
    this.certificateType,
    this.cipherSuite,
    this.minimumTlsVersion,
    this.minimumVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorSecretId': ?cdnFrontdoorSecretId,
      'certificateType': ?certificateType,
      'cipherSuite': ?pulumi.Input.mapOptionalInputValue<FrontdoorCustomDomainTlsCipherSuite, Map<String, dynamic>>(cipherSuite, (value) => value.toMap()),
      'minimumTlsVersion': ?minimumTlsVersion,
      'minimumVersion': ?minimumVersion,
    };
  }

  factory FrontdoorCustomDomainTls.fromMap(Map<String, dynamic> map) {
    return FrontdoorCustomDomainTls(
      cdnFrontdoorSecretId: (() { final guardedValue = map['cdnFrontdoorSecretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateType: (() { final guardedValue = map['certificateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cipherSuite: (() { final guardedValue = map['cipherSuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrontdoorCustomDomainTlsCipherSuite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      minimumTlsVersion: (() { final guardedValue = map['minimumTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minimumVersion: (() { final guardedValue = map['minimumVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
