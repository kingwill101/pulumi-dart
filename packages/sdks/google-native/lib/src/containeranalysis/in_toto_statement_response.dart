// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_toto_provenance_response.dart';
import 'slsa_provenance_response.dart';
import 'slsa_provenance_zero_two_response.dart';
import 'subject_response.dart';

/// Spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always "application/vnd.in-toto+json".
class InTotoStatementResponse {
  /// `https://slsa.dev/provenance/v0.1` for SlsaProvenance.
  final String predicateType;
  final InTotoProvenanceResponse provenance;
  final SlsaProvenanceResponse slsaProvenance;
  final SlsaProvenanceZeroTwoResponse slsaProvenanceZeroTwo;
  final List<SubjectResponse> subject;
  /// Always `https://in-toto.io/Statement/v0.1`.
  final String type;

  /// Creates a new [InTotoStatementResponse].
  /// [predicateType] `https://slsa.dev/provenance/v0.1` for SlsaProvenance.
  /// [provenance] Required.
  /// [slsaProvenance] Required.
  /// [slsaProvenanceZeroTwo] Required.
  /// [subject] Required.
  /// [type] Always `https://in-toto.io/Statement/v0.1`.
  InTotoStatementResponse({
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
      'provenance': provenance.toMap(),
      'slsaProvenance': slsaProvenance.toMap(),
      'slsaProvenanceZeroTwo': slsaProvenanceZeroTwo.toMap(),
      'subject': pulumi.Input.encodeList<SubjectResponse, Map<String, dynamic>>(subject, (value) => value.toMap()),
      'type': type,
    };
  }

  factory InTotoStatementResponse.fromMap(Map<String, dynamic> map) {
    return InTotoStatementResponse(
      predicateType: map['predicateType'] as String,
      provenance: InTotoProvenanceResponse.fromMap((map['provenance'] as Map).cast<String, dynamic>()),
      slsaProvenance: SlsaProvenanceResponse.fromMap((map['slsaProvenance'] as Map).cast<String, dynamic>()),
      slsaProvenanceZeroTwo: SlsaProvenanceZeroTwoResponse.fromMap((map['slsaProvenanceZeroTwo'] as Map).cast<String, dynamic>()),
      subject: pulumi.Input.decodeList<SubjectResponse>(map['subject'], (value) => SubjectResponse.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

