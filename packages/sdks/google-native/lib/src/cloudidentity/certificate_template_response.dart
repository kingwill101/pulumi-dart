// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CertificateTemplate (v3 Extension in X.509).
class CertificateTemplateResponse {
  /// The Major version of the template. Example: 100.
  final pulumi.Input<int> majorVersion;
  /// The minor version of the template. Example: 12.
  final pulumi.Input<int> minorVersion;

  /// Creates a new [CertificateTemplateResponse].
  /// [majorVersion] The Major version of the template. Example: 100.
  /// [minorVersion] The minor version of the template. Example: 12.
  const CertificateTemplateResponse({
    required this.majorVersion,
    required this.minorVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'majorVersion': majorVersion,
      'minorVersion': minorVersion,
    };
  }

  factory CertificateTemplateResponse.fromMap(Map<String, dynamic> map) {
    return CertificateTemplateResponse(
      majorVersion: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['majorVersion'])),
      minorVersion: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['minorVersion'])),
    );
  }
}
