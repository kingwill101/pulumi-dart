// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subject_alt_names_response.dart';
import 'subject_response.dart';

/// These values are used to create the distinguished name and subject alternative name fields in an X.509 certificate.
class SubjectConfigResponse {
  /// Optional. Contains distinguished name fields such as the common name, location and organization.
  final pulumi.Input<SubjectResponse> subject;
  /// Optional. The subject alternative name fields.
  final pulumi.Input<SubjectAltNamesResponse> subjectAltName;

  /// Creates a new [SubjectConfigResponse].
  /// [subject] Optional. Contains distinguished name fields such as the common name, location and organization.
  /// [subjectAltName] Optional. The subject alternative name fields.
  SubjectConfigResponse({
    required this.subject,
    required this.subjectAltName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subject': pulumi.Input.mapInputValue<SubjectResponse, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'subjectAltName': pulumi.Input.mapInputValue<SubjectAltNamesResponse, Map<String, dynamic>>(subjectAltName, (value) => value.toMap()),
    };
  }

  factory SubjectConfigResponse.fromMap(Map<String, dynamic> map) {
    return SubjectConfigResponse(
      subject: (SubjectResponse.fromMap((map['subject'] as Map).cast<String, dynamic>())).input(),
      subjectAltName: (SubjectAltNamesResponse.fromMap((map['subjectAltName'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

