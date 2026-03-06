// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sbom_reference_intoto_predicate_response.dart';
import 'subject_response.dart';

/// The actual payload that contains the SBOM Reference data. The payload follows the intoto statement specification. See https://github.com/in-toto/attestation/blob/main/spec/v1.0/statement.md for more details.
class SbomReferenceIntotoPayloadResponse {
  /// Additional parameters of the Predicate. Includes the actual data about the SBOM.
  final pulumi.Input<SbomReferenceIntotoPredicateResponse> predicate;
  /// URI identifying the type of the Predicate.
  final pulumi.Input<String> predicateType;
  /// Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  final pulumi.Input<List<SubjectResponse>> subject;
  /// Identifier for the schema of the Statement.
  final pulumi.Input<String> type;

  /// Creates a new [SbomReferenceIntotoPayloadResponse].
  /// [predicate] Additional parameters of the Predicate. Includes the actual data about the SBOM.
  /// [predicateType] URI identifying the type of the Predicate.
  /// [subject] Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  /// [type] Identifier for the schema of the Statement.
  const SbomReferenceIntotoPayloadResponse({
    required this.predicate,
    required this.predicateType,
    required this.subject,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predicate': pulumi.Input.mapInputValue<SbomReferenceIntotoPredicateResponse, Map<String, dynamic>>(predicate, (value) => value.toMap()),
      'predicateType': predicateType,
      'subject': pulumi.Input.mapInputValue<List<SubjectResponse>, List<Map<String, dynamic>>>(subject, (value) => pulumi.Input.encodeList<SubjectResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory SbomReferenceIntotoPayloadResponse.fromMap(Map<String, dynamic> map) {
    return SbomReferenceIntotoPayloadResponse(
      predicate: pulumi.Input.fromValue(SbomReferenceIntotoPredicateResponse.fromMap((map['predicate']! as Map).cast<String, dynamic>())),
      predicateType: pulumi.Input.fromValue(map['predicateType'] as String),
      subject: pulumi.Input.fromValue(pulumi.Input.decodeList<SubjectResponse>(map['subject']!, (value) => SubjectResponse.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

