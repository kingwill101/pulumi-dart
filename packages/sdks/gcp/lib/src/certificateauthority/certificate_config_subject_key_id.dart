// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateConfigSubjectKeyId {
  /// The value of the KeyId in lowercase hexadecimal.
  final pulumi.Input<String>? keyId;

  /// Creates a new [CertificateConfigSubjectKeyId].
  /// [keyId] The value of the KeyId in lowercase hexadecimal.
  CertificateConfigSubjectKeyId({
    this.keyId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': ?keyId,
    };
  }

  factory CertificateConfigSubjectKeyId.fromMap(Map<String, dynamic> map) {
    return CertificateConfigSubjectKeyId(
      keyId: map['keyId'] == null ? null : (map['keyId']! as String).input(),
    );
  }
}

