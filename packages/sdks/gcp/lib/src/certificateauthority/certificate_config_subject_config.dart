// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_config_subject_config_subject.dart';
import 'certificate_config_subject_config_subject_alt_name.dart';

class CertificateConfigSubjectConfig {
  /// Contains distinguished name fields such as the location and organization.
  /// Structure is documented below.
  final pulumi.Input<CertificateConfigSubjectConfigSubject> subject;
  /// The subject alternative name fields.
  /// Structure is documented below.
  final pulumi.Input<CertificateConfigSubjectConfigSubjectAltName>? subjectAltName;

  /// Creates a new [CertificateConfigSubjectConfig].
  /// [subject] Contains distinguished name fields such as the location and organization.
  /// [subjectAltName] The subject alternative name fields.
  CertificateConfigSubjectConfig({
    required this.subject,
    this.subjectAltName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subject': pulumi.Input.mapInputValue<CertificateConfigSubjectConfigSubject, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'subjectAltName': ?pulumi.Input.mapOptionalInputValue<CertificateConfigSubjectConfigSubjectAltName, Map<String, dynamic>>(subjectAltName, (value) => value.toMap()),
    };
  }

  factory CertificateConfigSubjectConfig.fromMap(Map<String, dynamic> map) {
    return CertificateConfigSubjectConfig(
      subject: (CertificateConfigSubjectConfigSubject.fromMap((map['subject'] as Map).cast<String, dynamic>())).input(),
      subjectAltName: map['subjectAltName'] == null ? null : (CertificateConfigSubjectConfigSubjectAltName.fromMap((map['subjectAltName'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

