// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slsa_provenance_v1_response.dart';
import 'subject_response.dart';

class InTotoSlsaProvenanceV1Response {
  final pulumi.Input<SlsaProvenanceV1Response> predicate;
  final pulumi.Input<String> predicateType;
  final pulumi.Input<List<SubjectResponse>> subject;
  /// InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  final pulumi.Input<String> type;

  /// Creates a new [InTotoSlsaProvenanceV1Response].
  /// [predicate] Required.
  /// [predicateType] Required.
  /// [subject] Required.
  /// [type] InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  const InTotoSlsaProvenanceV1Response({
    required this.predicate,
    required this.predicateType,
    required this.subject,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predicate': pulumi.Input.mapInputValue<SlsaProvenanceV1Response, Map<String, dynamic>>(predicate, (value) => value.toMap()),
      'predicateType': predicateType,
      'subject': pulumi.Input.mapInputValue<List<SubjectResponse>, List<Map<String, dynamic>>>(subject, (value) => pulumi.Input.encodeList<SubjectResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory InTotoSlsaProvenanceV1Response.fromMap(Map<String, dynamic> map) {
    return InTotoSlsaProvenanceV1Response(
      predicate: pulumi.Input.fromValue(SlsaProvenanceV1Response.fromMap((map['predicate']! as Map).cast<String, dynamic>())),
      predicateType: pulumi.Input.fromValue(map['predicateType'] as String),
      subject: pulumi.Input.fromValue(pulumi.Input.decodeList<SubjectResponse>(map['subject']!, (value) => SubjectResponse.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

