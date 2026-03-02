// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subject.dart';
import 'subject_alt_names.dart';

/// These values are used to create the distinguished name and subject alternative name fields in an X.509 certificate.
class SubjectConfig {
  /// Optional. Contains distinguished name fields such as the common name, location and organization.
  final pulumi.Input<Subject>? subject;
  /// Optional. The subject alternative name fields.
  final pulumi.Input<SubjectAltNames>? subjectAltName;

  /// Creates a new [SubjectConfig].
  /// [subject] Optional. Contains distinguished name fields such as the common name, location and organization.
  /// [subjectAltName] Optional. The subject alternative name fields.
  SubjectConfig({
    this.subject,
    this.subjectAltName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subject': ?pulumi.Input.mapOptionalInputValue<Subject, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'subjectAltName': ?pulumi.Input.mapOptionalInputValue<SubjectAltNames, Map<String, dynamic>>(subjectAltName, (value) => value.toMap()),
    };
  }

  factory SubjectConfig.fromMap(Map<String, dynamic> map) {
    return SubjectConfig(
      subject: map['subject'] == null ? null : (Subject.fromMap((map['subject']! as Map).cast<String, dynamic>())).input(),
      subjectAltName: map['subjectAltName'] == null ? null : (SubjectAltNames.fromMap((map['subjectAltName']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

