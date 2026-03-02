// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slsa_provenance_v1_containeranalysis_v1beta1.dart';
import 'subject_containeranalysis_v1beta1.dart';

class InTotoSlsaProvenanceV1ContaineranalysisV1beta1 {
  final pulumi.Input<SlsaProvenanceV1ContaineranalysisV1beta1>? predicate;
  final pulumi.Input<String>? predicateType;
  final pulumi.Input<List<SubjectContaineranalysisV1beta1>>? subject;
  /// InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  final pulumi.Input<String>? type;

  /// Creates a new [InTotoSlsaProvenanceV1ContaineranalysisV1beta1].
  /// [predicate] Optional.
  /// [predicateType] Optional.
  /// [subject] Optional.
  /// [type] InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  InTotoSlsaProvenanceV1ContaineranalysisV1beta1({
    this.predicate,
    this.predicateType,
    this.subject,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predicate': ?pulumi.Input.mapOptionalInputValue<SlsaProvenanceV1ContaineranalysisV1beta1, Map<String, dynamic>>(predicate, (value) => value.toMap()),
      'predicateType': ?predicateType,
      'subject': ?pulumi.Input.mapOptionalInputValue<List<SubjectContaineranalysisV1beta1>, List<Map<String, dynamic>>>(subject, (value) => pulumi.Input.encodeList<SubjectContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory InTotoSlsaProvenanceV1ContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return InTotoSlsaProvenanceV1ContaineranalysisV1beta1(
      predicate: map['predicate'] == null ? null : (SlsaProvenanceV1ContaineranalysisV1beta1.fromMap((map['predicate']! as Map).cast<String, dynamic>())).input(),
      predicateType: map['predicateType'] == null ? null : (map['predicateType']! as String).input(),
      subject: map['subject'] == null ? null : (pulumi.Input.decodeList<SubjectContaineranalysisV1beta1>(map['subject']!, (value) => SubjectContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

