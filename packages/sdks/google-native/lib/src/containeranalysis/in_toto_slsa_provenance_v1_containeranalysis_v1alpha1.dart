// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slsa_provenance_v1_containeranalysis_v1alpha1.dart';
import 'subject_containeranalysis_v1alpha1.dart';

class InTotoSlsaProvenanceV1ContaineranalysisV1alpha1 {
  final pulumi.Input<SlsaProvenanceV1ContaineranalysisV1alpha1>? predicate;
  final pulumi.Input<String>? predicateType;
  final pulumi.Input<List<SubjectContaineranalysisV1alpha1>>? subject;
  /// InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  final pulumi.Input<String>? type;

  /// Creates a new [InTotoSlsaProvenanceV1ContaineranalysisV1alpha1].
  /// [predicate] Optional.
  /// [predicateType] Optional.
  /// [subject] Optional.
  /// [type] InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  const InTotoSlsaProvenanceV1ContaineranalysisV1alpha1({
    this.predicate,
    this.predicateType,
    this.subject,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predicate': ?pulumi.Input.mapOptionalInputValue<SlsaProvenanceV1ContaineranalysisV1alpha1, Map<String, dynamic>>(predicate, (value) => value.toMap()),
      'predicateType': ?predicateType,
      'subject': ?pulumi.Input.mapOptionalInputValue<List<SubjectContaineranalysisV1alpha1>, List<Map<String, dynamic>>>(subject, (value) => pulumi.Input.encodeList<SubjectContaineranalysisV1alpha1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory InTotoSlsaProvenanceV1ContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return InTotoSlsaProvenanceV1ContaineranalysisV1alpha1(
      predicate: (() { final guardedValue = map['predicate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlsaProvenanceV1ContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predicateType: (() { final guardedValue = map['predicateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubjectContaineranalysisV1alpha1>(guardedValue, (value) => SubjectContaineranalysisV1alpha1.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
