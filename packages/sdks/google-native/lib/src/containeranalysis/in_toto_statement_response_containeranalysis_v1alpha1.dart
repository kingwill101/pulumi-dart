// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_toto_provenance_response_containeranalysis_v1alpha1.dart';
import 'slsa_provenance_response_containeranalysis_v1alpha1.dart';
import 'slsa_provenance_zero_two_response_containeranalysis_v1alpha1.dart';
import 'subject_response_containeranalysis_v1alpha1.dart';

/// Spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always "application/vnd.in-toto+json".
class InTotoStatementResponseContaineranalysisV1alpha1 {
  /// "https://slsa.dev/provenance/v0.1" for SlsaProvenance.
  final pulumi.Input<String> predicateType;
  /// Generic Grafeas provenance.
  final pulumi.Input<InTotoProvenanceResponseContaineranalysisV1alpha1> provenance;
  /// SLSA 0.1 provenance.
  final pulumi.Input<SlsaProvenanceResponseContaineranalysisV1alpha1> slsaProvenance;
  /// SLSA 0.2 provenance.
  final pulumi.Input<SlsaProvenanceZeroTwoResponseContaineranalysisV1alpha1> slsaProvenanceZeroTwo;
  /// subject is the subjects of the intoto statement
  final pulumi.Input<List<SubjectResponseContaineranalysisV1alpha1>> subject;
  /// Always "https://in-toto.io/Statement/v0.1".
  final pulumi.Input<String> type;

  /// Creates a new [InTotoStatementResponseContaineranalysisV1alpha1].
  /// [predicateType] "https://slsa.dev/provenance/v0.1" for SlsaProvenance.
  /// [provenance] Generic Grafeas provenance.
  /// [slsaProvenance] SLSA 0.1 provenance.
  /// [slsaProvenanceZeroTwo] SLSA 0.2 provenance.
  /// [subject] subject is the subjects of the intoto statement
  /// [type] Always "https://in-toto.io/Statement/v0.1".
  InTotoStatementResponseContaineranalysisV1alpha1({
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
      'provenance': pulumi.Input.mapInputValue<InTotoProvenanceResponseContaineranalysisV1alpha1, Map<String, dynamic>>(provenance, (value) => value.toMap()),
      'slsaProvenance': pulumi.Input.mapInputValue<SlsaProvenanceResponseContaineranalysisV1alpha1, Map<String, dynamic>>(slsaProvenance, (value) => value.toMap()),
      'slsaProvenanceZeroTwo': pulumi.Input.mapInputValue<SlsaProvenanceZeroTwoResponseContaineranalysisV1alpha1, Map<String, dynamic>>(slsaProvenanceZeroTwo, (value) => value.toMap()),
      'subject': pulumi.Input.mapInputValue<List<SubjectResponseContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(subject, (value) => pulumi.Input.encodeList<SubjectResponseContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory InTotoStatementResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return InTotoStatementResponseContaineranalysisV1alpha1(
      predicateType: (map['predicateType'] as String).input(),
      provenance: (InTotoProvenanceResponseContaineranalysisV1alpha1.fromMap((map['provenance'] as Map).cast<String, dynamic>())).input(),
      slsaProvenance: (SlsaProvenanceResponseContaineranalysisV1alpha1.fromMap((map['slsaProvenance'] as Map).cast<String, dynamic>())).input(),
      slsaProvenanceZeroTwo: (SlsaProvenanceZeroTwoResponseContaineranalysisV1alpha1.fromMap((map['slsaProvenanceZeroTwo'] as Map).cast<String, dynamic>())).input(),
      subject: (pulumi.Input.decodeList<SubjectResponseContaineranalysisV1alpha1>(map['subject'], (value) => SubjectResponseContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
    );
  }
}

