// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_toto_provenance_response.dart';
import 'slsa_provenance_response.dart';
import 'slsa_provenance_zero_two_response.dart';
import 'subject_response.dart';

/// Spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always "application/vnd.in-toto+json".
class InTotoStatementResponse {
  /// `https://slsa.dev/provenance/v0.1` for SlsaProvenance.
  final pulumi.Input<String> predicateType;
  final pulumi.Input<InTotoProvenanceResponse> provenance;
  final pulumi.Input<SlsaProvenanceResponse> slsaProvenance;
  final pulumi.Input<SlsaProvenanceZeroTwoResponse> slsaProvenanceZeroTwo;
  final pulumi.Input<List<SubjectResponse>> subject;
  /// Always `https://in-toto.io/Statement/v0.1`.
  final pulumi.Input<String> type;

  /// Creates a new [InTotoStatementResponse].
  /// [predicateType] `https://slsa.dev/provenance/v0.1` for SlsaProvenance.
  /// [provenance] Required.
  /// [slsaProvenance] Required.
  /// [slsaProvenanceZeroTwo] Required.
  /// [subject] Required.
  /// [type] Always `https://in-toto.io/Statement/v0.1`.
  const InTotoStatementResponse({
    required this.predicateType,
    required this.provenance,
    required this.slsaProvenance,
    required this.slsaProvenanceZeroTwo,
    required this.subject,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predicateType': predicateType,
      'provenance': pulumi.Input.mapInputValue<InTotoProvenanceResponse, Map<String, dynamic>>(provenance, (value) => value.toMap()),
      'slsaProvenance': pulumi.Input.mapInputValue<SlsaProvenanceResponse, Map<String, dynamic>>(slsaProvenance, (value) => value.toMap()),
      'slsaProvenanceZeroTwo': pulumi.Input.mapInputValue<SlsaProvenanceZeroTwoResponse, Map<String, dynamic>>(slsaProvenanceZeroTwo, (value) => value.toMap()),
      'subject': pulumi.Input.mapInputValue<List<SubjectResponse>, List<Map<String, dynamic>>>(subject, (value) => pulumi.Input.encodeList<SubjectResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory InTotoStatementResponse.fromMap(Map<String, dynamic> map) {
    return InTotoStatementResponse(
      predicateType: pulumi.Input.fromValue(map['predicateType'] as String),
      provenance: pulumi.Input.fromValue(InTotoProvenanceResponse.fromMap((map['provenance']! as Map).cast<String, dynamic>())),
      slsaProvenance: pulumi.Input.fromValue(SlsaProvenanceResponse.fromMap((map['slsaProvenance']! as Map).cast<String, dynamic>())),
      slsaProvenanceZeroTwo: pulumi.Input.fromValue(SlsaProvenanceZeroTwoResponse.fromMap((map['slsaProvenanceZeroTwo']! as Map).cast<String, dynamic>())),
      subject: pulumi.Input.fromValue(pulumi.Input.decodeList<SubjectResponse>(map['subject']!, (value) => SubjectResponse.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

