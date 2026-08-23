// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateCertificateDescriptionAuthorityKeyId {
  /// (Output)
  /// Optional. The value of this KeyId encoded in lowercase hexadecimal. This is most likely the 160 bit SHA-1 hash of the public key.
  final pulumi.Input<String>? keyId;

  /// Creates a new [CertificateCertificateDescriptionAuthorityKeyId].
  /// [keyId] (Output)
  const CertificateCertificateDescriptionAuthorityKeyId({
    this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': ?keyId,
    };
  }

  factory CertificateCertificateDescriptionAuthorityKeyId.fromMap(Map<String, dynamic> map) {
    return CertificateCertificateDescriptionAuthorityKeyId(
      keyId: (() { final guardedValue = map['keyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
