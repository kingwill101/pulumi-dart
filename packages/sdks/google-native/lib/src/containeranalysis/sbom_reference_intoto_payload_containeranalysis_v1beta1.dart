// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sbom_reference_intoto_predicate_containeranalysis_v1beta1.dart';
import 'subject_containeranalysis_v1beta1.dart';

/// The actual payload that contains the SBOM Reference data. The payload follows the intoto statement specification. See https://github.com/in-toto/attestation/blob/main/spec/v1.0/statement.md for more details.
class SbomReferenceIntotoPayloadContaineranalysisV1beta1 {
  /// Additional parameters of the Predicate. Includes the actual data about the SBOM.
  final pulumi.Input<SbomReferenceIntotoPredicateContaineranalysisV1beta1>? predicate;
  /// URI identifying the type of the Predicate.
  final pulumi.Input<String>? predicateType;
  /// Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  final pulumi.Input<List<SubjectContaineranalysisV1beta1>>? subject;
  /// Identifier for the schema of the Statement.
  final pulumi.Input<String>? type;

  /// Creates a new [SbomReferenceIntotoPayloadContaineranalysisV1beta1].
  /// [predicate] Additional parameters of the Predicate. Includes the actual data about the SBOM.
  /// [predicateType] URI identifying the type of the Predicate.
  /// [subject] Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  /// [type] Identifier for the schema of the Statement.
  SbomReferenceIntotoPayloadContaineranalysisV1beta1({
    this.predicate,
    this.predicateType,
    this.subject,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predicate': ?pulumi.Input.mapOptionalInputValue<SbomReferenceIntotoPredicateContaineranalysisV1beta1, Map<String, dynamic>>(predicate, (value) => value.toMap()),
      'predicateType': ?predicateType,
      'subject': ?pulumi.Input.mapOptionalInputValue<List<SubjectContaineranalysisV1beta1>, List<Map<String, dynamic>>>(subject, (value) => pulumi.Input.encodeList<SubjectContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory SbomReferenceIntotoPayloadContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return SbomReferenceIntotoPayloadContaineranalysisV1beta1(
      predicate: map['predicate'] == null ? null : (SbomReferenceIntotoPredicateContaineranalysisV1beta1.fromMap((map['predicate']! as Map).cast<String, dynamic>())).input(),
      predicateType: map['predicateType'] == null ? null : (map['predicateType']! as String).input(),
      subject: map['subject'] == null ? null : (pulumi.Input.decodeList<SubjectContaineranalysisV1beta1>(map['subject']!, (value) => SubjectContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

