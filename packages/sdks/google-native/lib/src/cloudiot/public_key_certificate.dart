// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_key_certificate_format.dart';

/// A public key certificate format and data.
class PublicKeyCertificate {
  /// The certificate data.
  final pulumi.Input<String>? certificate;
  /// The certificate format.
  final pulumi.Input<PublicKeyCertificateFormat>? format;

  /// Creates a new [PublicKeyCertificate].
  /// [certificate] The certificate data.
  /// [format] The certificate format.
  PublicKeyCertificate({
    this.certificate,
    this.format,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'format': ?pulumi.Input.mapOptionalInputValue<PublicKeyCertificateFormat, String>(format, (value) => value.value),
    };
  }

  factory PublicKeyCertificate.fromMap(Map<String, dynamic> map) {
    return PublicKeyCertificate(
      certificate: map['certificate'] == null ? null : (map['certificate']! as String).input(),
      format: map['format'] == null ? null : (PublicKeyCertificateFormat.fromValue(map['format']! as String)).input(),
    );
  }
}

