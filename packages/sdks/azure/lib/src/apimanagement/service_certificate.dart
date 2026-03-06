// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceCertificate {
  /// The password for the certificate.
  final pulumi.Input<String>? certificatePassword;
  /// The Base64 Encoded PFX or Base64 Encoded X.509 Certificate.
  final pulumi.Input<String> encodedCertificate;
  /// The expiration date of the certificate in RFC3339 format: `2000-01-02T03:04:05Z`.
  final pulumi.Input<String>? expiry;
  /// The name of the Certificate Store where this certificate should be stored. Possible values are `CertificateAuthority` and `Root`.
  final pulumi.Input<String> storeName;
  /// The subject of the certificate.
  final pulumi.Input<String>? subject;
  /// The thumbprint of the certificate.
  final pulumi.Input<String>? thumbprint;

  /// Creates a new [ServiceCertificate].
  /// [certificatePassword] The password for the certificate.
  /// [encodedCertificate] The Base64 Encoded PFX or Base64 Encoded X.509 Certificate.
  /// [expiry] The expiration date of the certificate in RFC3339 format: `2000-01-02T03:04:05Z`.
  /// [storeName] The name of the Certificate Store where this certificate should be stored. Possible values are `CertificateAuthority` and `Root`.
  /// [subject] The subject of the certificate.
  /// [thumbprint] The thumbprint of the certificate.
  const ServiceCertificate({
    this.certificatePassword,
    required this.encodedCertificate,
    this.expiry,
    required this.storeName,
    this.subject,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificatePassword': ?certificatePassword,
      'encodedCertificate': encodedCertificate,
      'expiry': ?expiry,
      'storeName': storeName,
      'subject': ?subject,
      'thumbprint': ?thumbprint,
    };
  }

  factory ServiceCertificate.fromMap(Map<String, dynamic> map) {
    return ServiceCertificate(
      certificatePassword: (() { final guardedValue = map['certificatePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encodedCertificate: pulumi.Input.fromValue(map['encodedCertificate'] as String),
      expiry: (() { final guardedValue = map['expiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storeName: pulumi.Input.fromValue(map['storeName'] as String),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

