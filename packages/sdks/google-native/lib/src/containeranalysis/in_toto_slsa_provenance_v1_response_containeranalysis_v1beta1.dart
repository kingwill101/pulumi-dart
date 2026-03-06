// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slsa_provenance_v1_response_containeranalysis_v1beta1.dart';
import 'subject_response_containeranalysis_v1beta1.dart';

class InTotoSlsaProvenanceV1ResponseContaineranalysisV1beta1 {
  final pulumi.Input<SlsaProvenanceV1ResponseContaineranalysisV1beta1> predicate;
  final pulumi.Input<String> predicateType;
  final pulumi.Input<List<SubjectResponseContaineranalysisV1beta1>> subject;
  /// InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  final pulumi.Input<String> type;

  /// Creates a new [InTotoSlsaProvenanceV1ResponseContaineranalysisV1beta1].
  /// [predicate] Required.
  /// [predicateType] Required.
  /// [subject] Required.
  /// [type] InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  const InTotoSlsaProvenanceV1ResponseContaineranalysisV1beta1({
    required this.predicate,
    required this.predicateType,
    required this.subject,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predicate': pulumi.Input.mapInputValue<SlsaProvenanceV1ResponseContaineranalysisV1beta1, Map<String, dynamic>>(predicate, (value) => value.toMap()),
      'predicateType': predicateType,
      'subject': pulumi.Input.mapInputValue<List<SubjectResponseContaineranalysisV1beta1>, List<Map<String, dynamic>>>(subject, (value) => pulumi.Input.encodeList<SubjectResponseContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory InTotoSlsaProvenanceV1ResponseContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return InTotoSlsaProvenanceV1ResponseContaineranalysisV1beta1(
      predicate: pulumi.Input.fromValue(SlsaProvenanceV1ResponseContaineranalysisV1beta1.fromMap((map['predicate']! as Map).cast<String, dynamic>())),
      predicateType: pulumi.Input.fromValue(map['predicateType'] as String),
      subject: pulumi.Input.fromValue(pulumi.Input.decodeList<SubjectResponseContaineranalysisV1beta1>(map['subject']!, (value) => SubjectResponseContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

