// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authority_config_subject_config_subject.dart';
import 'get_authority_config_subject_config_subject_alt_name.dart';

class GetAuthorityConfigSubjectConfig {
  /// The subject alternative name fields.
  final pulumi.Input<List<GetAuthorityConfigSubjectConfigSubjectAltName>> subjectAltNames;
  /// Contains distinguished name fields such as the location and organization.
  final pulumi.Input<List<GetAuthorityConfigSubjectConfigSubject>> subjects;

  /// Creates a new [GetAuthorityConfigSubjectConfig].
  /// [subjectAltNames] The subject alternative name fields.
  /// [subjects] Contains distinguished name fields such as the location and organization.
  GetAuthorityConfigSubjectConfig({
    required this.subjectAltNames,
    required this.subjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAltNames': pulumi.Input.mapInputValue<List<GetAuthorityConfigSubjectConfigSubjectAltName>, List<Map<String, dynamic>>>(subjectAltNames, (value) => pulumi.Input.encodeList<GetAuthorityConfigSubjectConfigSubjectAltName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subjects': pulumi.Input.mapInputValue<List<GetAuthorityConfigSubjectConfigSubject>, List<Map<String, dynamic>>>(subjects, (value) => pulumi.Input.encodeList<GetAuthorityConfigSubjectConfigSubject, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAuthorityConfigSubjectConfig.fromMap(Map<String, dynamic> map) {
    return GetAuthorityConfigSubjectConfig(
      subjectAltNames: (pulumi.Input.decodeList<GetAuthorityConfigSubjectConfigSubjectAltName>(map['subjectAltNames'], (value) => GetAuthorityConfigSubjectConfigSubjectAltName.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subjects: (pulumi.Input.decodeList<GetAuthorityConfigSubjectConfigSubject>(map['subjects'], (value) => GetAuthorityConfigSubjectConfigSubject.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

