// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'slsa_provenance_v1.dart';
import 'subject.dart';

class InTotoSlsaProvenanceV1 {
  final pulumi.Input<SlsaProvenanceV1>? predicate;
  final pulumi.Input<String>? predicateType;
  final pulumi.Input<List<Subject>>? subject;
  /// InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  final pulumi.Input<String>? type;

  /// Creates a new [InTotoSlsaProvenanceV1].
  /// [predicate] Optional.
  /// [predicateType] Optional.
  /// [subject] Optional.
  /// [type] InToto spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement
  InTotoSlsaProvenanceV1({
    this.predicate,
    this.predicateType,
    this.subject,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predicate': ?pulumi.Input.mapOptionalInputValue<SlsaProvenanceV1, Map<String, dynamic>>(predicate, (value) => value.toMap()),
      'predicateType': ?predicateType,
      'subject': ?pulumi.Input.mapOptionalInputValue<List<Subject>, List<Map<String, dynamic>>>(subject, (value) => pulumi.Input.encodeList<Subject, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory InTotoSlsaProvenanceV1.fromMap(Map<String, dynamic> map) {
    return InTotoSlsaProvenanceV1(
      predicate: map['predicate'] == null ? null : (SlsaProvenanceV1.fromMap((map['predicate'] as Map).cast<String, dynamic>())).input(),
      predicateType: map['predicateType'] == null ? null : (map['predicateType'] as String).input(),
      subject: map['subject'] == null ? null : (pulumi.Input.decodeList<Subject>(map['subject'], (value) => Subject.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

