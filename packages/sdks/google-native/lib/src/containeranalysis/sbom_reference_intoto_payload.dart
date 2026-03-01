// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sbom_reference_intoto_predicate.dart';
import 'subject.dart';

/// The actual payload that contains the SBOM Reference data. The payload follows the intoto statement specification. See https://github.com/in-toto/attestation/blob/main/spec/v1.0/statement.md for more details.
class SbomReferenceIntotoPayload {
  /// Additional parameters of the Predicate. Includes the actual data about the SBOM.
  final SbomReferenceIntotoPredicate? predicate;
  /// URI identifying the type of the Predicate.
  final String? predicateType;
  /// Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  final List<Subject>? subject;
  /// Identifier for the schema of the Statement.
  final String? type;

  /// Creates a new [SbomReferenceIntotoPayload].
  /// [predicate] Additional parameters of the Predicate. Includes the actual data about the SBOM.
  /// [predicateType] URI identifying the type of the Predicate.
  /// [subject] Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  /// [type] Identifier for the schema of the Statement.
  SbomReferenceIntotoPayload({
    this.predicate,
    this.predicateType,
    this.subject,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predicate': ?predicate == null ? null : predicate!.toMap(),
      'predicateType': ?predicateType,
      'subject': ?subject == null ? null : pulumi.Input.encodeList<Subject, Map<String, dynamic>>(subject!, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory SbomReferenceIntotoPayload.fromMap(Map<String, dynamic> map) {
    return SbomReferenceIntotoPayload(
      predicate: map['predicate'] == null ? null : SbomReferenceIntotoPredicate.fromMap((map['predicate'] as Map).cast<String, dynamic>()),
      predicateType: map['predicateType'] == null ? null : map['predicateType'] as String,
      subject: map['subject'] == null ? null : pulumi.Input.decodeList<Subject>(map['subject'], (value) => Subject.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

