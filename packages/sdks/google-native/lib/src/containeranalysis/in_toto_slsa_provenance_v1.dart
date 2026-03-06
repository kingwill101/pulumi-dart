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
  const InTotoSlsaProvenanceV1({
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
      predicate: (() { final guardedValue = map['predicate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlsaProvenanceV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predicateType: (() { final guardedValue = map['predicateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subject: (() { final guardedValue = map['subject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Subject>(guardedValue, (value) => Subject.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

