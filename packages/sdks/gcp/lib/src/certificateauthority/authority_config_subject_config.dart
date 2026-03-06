// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_config_subject_config_subject.dart';
import 'authority_config_subject_config_subject_alt_name.dart';

class AuthorityConfigSubjectConfig {
  /// Contains distinguished name fields such as the location and organization.
  /// Structure is documented below.
  final pulumi.Input<AuthorityConfigSubjectConfigSubject> subject;
  /// The subject alternative name fields.
  /// Structure is documented below.
  final pulumi.Input<AuthorityConfigSubjectConfigSubjectAltName>? subjectAltName;

  /// Creates a new [AuthorityConfigSubjectConfig].
  /// [subject] Contains distinguished name fields such as the location and organization.
  /// [subjectAltName] The subject alternative name fields.
  const AuthorityConfigSubjectConfig({
    required this.subject,
    this.subjectAltName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subject': pulumi.Input.mapInputValue<AuthorityConfigSubjectConfigSubject, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'subjectAltName': ?pulumi.Input.mapOptionalInputValue<AuthorityConfigSubjectConfigSubjectAltName, Map<String, dynamic>>(subjectAltName, (value) => value.toMap()),
    };
  }

  factory AuthorityConfigSubjectConfig.fromMap(Map<String, dynamic> map) {
    return AuthorityConfigSubjectConfig(
      subject: pulumi.Input.fromValue(AuthorityConfigSubjectConfigSubject.fromMap((map['subject']! as Map).cast<String, dynamic>())),
      subjectAltName: (() { final guardedValue = map['subjectAltName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorityConfigSubjectConfigSubjectAltName.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

