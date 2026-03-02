// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_toto_provenance.dart';
import 'slsa_provenance.dart';
import 'slsa_provenance_zero_two.dart';
import 'subject.dart';

/// Spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always "application/vnd.in-toto+json".
class InTotoStatement {
  /// `https://slsa.dev/provenance/v0.1` for SlsaProvenance.
  final pulumi.Input<String>? predicateType;
  final pulumi.Input<InTotoProvenance>? provenance;
  final pulumi.Input<SlsaProvenance>? slsaProvenance;
  final pulumi.Input<SlsaProvenanceZeroTwo>? slsaProvenanceZeroTwo;
  final pulumi.Input<List<Subject>>? subject;
  /// Always `https://in-toto.io/Statement/v0.1`.
  final pulumi.Input<String>? type;

  /// Creates a new [InTotoStatement].
  /// [predicateType] `https://slsa.dev/provenance/v0.1` for SlsaProvenance.
  /// [provenance] Optional.
  /// [slsaProvenance] Optional.
  /// [slsaProvenanceZeroTwo] Optional.
  /// [subject] Optional.
  /// [type] Always `https://in-toto.io/Statement/v0.1`.
  InTotoStatement({
    this.predicateType,
    this.provenance,
    this.slsaProvenance,
    this.slsaProvenanceZeroTwo,
    this.subject,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predicateType': ?predicateType,
      'provenance': ?pulumi.Input.mapOptionalInputValue<InTotoProvenance, Map<String, dynamic>>(provenance, (value) => value.toMap()),
      'slsaProvenance': ?pulumi.Input.mapOptionalInputValue<SlsaProvenance, Map<String, dynamic>>(slsaProvenance, (value) => value.toMap()),
      'slsaProvenanceZeroTwo': ?pulumi.Input.mapOptionalInputValue<SlsaProvenanceZeroTwo, Map<String, dynamic>>(slsaProvenanceZeroTwo, (value) => value.toMap()),
      'subject': ?pulumi.Input.mapOptionalInputValue<List<Subject>, List<Map<String, dynamic>>>(subject, (value) => pulumi.Input.encodeList<Subject, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory InTotoStatement.fromMap(Map<String, dynamic> map) {
    return InTotoStatement(
      predicateType: map['predicateType'] == null ? null : (map['predicateType']! as String).input(),
      provenance: map['provenance'] == null ? null : (InTotoProvenance.fromMap((map['provenance']! as Map).cast<String, dynamic>())).input(),
      slsaProvenance: map['slsaProvenance'] == null ? null : (SlsaProvenance.fromMap((map['slsaProvenance']! as Map).cast<String, dynamic>())).input(),
      slsaProvenanceZeroTwo: map['slsaProvenanceZeroTwo'] == null ? null : (SlsaProvenanceZeroTwo.fromMap((map['slsaProvenanceZeroTwo']! as Map).cast<String, dynamic>())).input(),
      subject: map['subject'] == null ? null : (pulumi.Input.decodeList<Subject>(map['subject']!, (value) => Subject.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

