// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subject_alt_names_response.dart';
import 'subject_response.dart';

/// These values describe fields in an issued X.509 certificate such as the distinguished name, subject alternative names, serial number, and lifetime.
class SubjectDescriptionResponse {
  /// The serial number encoded in lowercase hexadecimal.
  final pulumi.Input<String> hexSerialNumber;
  /// For convenience, the actual lifetime of an issued certificate.
  final pulumi.Input<String> lifetime;
  /// The time after which the certificate is expired. Per RFC 5280, the validity period for a certificate is the period of time from not_before_time through not_after_time, inclusive. Corresponds to 'not_before_time' + 'lifetime' - 1 second.
  final pulumi.Input<String> notAfterTime;
  /// The time at which the certificate becomes valid.
  final pulumi.Input<String> notBeforeTime;
  /// Contains distinguished name fields such as the common name, location and / organization.
  final pulumi.Input<SubjectResponse> subject;
  /// The subject alternative name fields.
  final pulumi.Input<SubjectAltNamesResponse> subjectAltName;

  /// Creates a new [SubjectDescriptionResponse].
  /// [hexSerialNumber] The serial number encoded in lowercase hexadecimal.
  /// [lifetime] For convenience, the actual lifetime of an issued certificate.
  /// [notAfterTime] The time after which the certificate is expired. Per RFC 5280, the validity period for a certificate is the period of time from not_before_time through not_after_time, inclusive. Corresponds to 'not_before_time' + 'lifetime' - 1 second.
  /// [notBeforeTime] The time at which the certificate becomes valid.
  /// [subject] Contains distinguished name fields such as the common name, location and / organization.
  /// [subjectAltName] The subject alternative name fields.
  SubjectDescriptionResponse({
    required this.hexSerialNumber,
    required this.lifetime,
    required this.notAfterTime,
    required this.notBeforeTime,
    required this.subject,
    required this.subjectAltName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hexSerialNumber': hexSerialNumber,
      'lifetime': lifetime,
      'notAfterTime': notAfterTime,
      'notBeforeTime': notBeforeTime,
      'subject': pulumi.Input.mapInputValue<SubjectResponse, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'subjectAltName': pulumi.Input.mapInputValue<SubjectAltNamesResponse, Map<String, dynamic>>(subjectAltName, (value) => value.toMap()),
    };
  }

  factory SubjectDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return SubjectDescriptionResponse(
      hexSerialNumber: (map['hexSerialNumber'] as String).input(),
      lifetime: (map['lifetime'] as String).input(),
      notAfterTime: (map['notAfterTime'] as String).input(),
      notBeforeTime: (map['notBeforeTime'] as String).input(),
      subject: (SubjectResponse.fromMap((map['subject'] as Map).cast<String, dynamic>())).input(),
      subjectAltName: (SubjectAltNamesResponse.fromMap((map['subjectAltName'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

