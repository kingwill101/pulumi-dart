// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_toto_provenance_containeranalysis_v1alpha1.dart';
import 'slsa_provenance_containeranalysis_v1alpha1.dart';
import 'slsa_provenance_zero_two_containeranalysis_v1alpha1.dart';
import 'subject_containeranalysis_v1alpha1.dart';

/// Spec defined at https://github.com/in-toto/attestation/tree/main/spec#statement The serialized InTotoStatement will be stored as Envelope.payload. Envelope.payloadType is always "application/vnd.in-toto+json".
class InTotoStatementContaineranalysisV1alpha1 {
  /// "https://slsa.dev/provenance/v0.1" for SlsaProvenance.
  final pulumi.Input<String>? predicateType;

  /// Generic Grafeas provenance.
  final pulumi.Input<InTotoProvenanceContaineranalysisV1alpha1>? provenance;

  /// SLSA 0.1 provenance.
  final pulumi.Input<SlsaProvenanceContaineranalysisV1alpha1>? slsaProvenance;

  /// SLSA 0.2 provenance.
  final pulumi.Input<SlsaProvenanceZeroTwoContaineranalysisV1alpha1>?
  slsaProvenanceZeroTwo;

  /// subject is the subjects of the intoto statement
  final pulumi.Input<List<SubjectContaineranalysisV1alpha1>>? subject;

  /// Always "https://in-toto.io/Statement/v0.1".
  final pulumi.Input<String>? type;

  /// Creates a new [InTotoStatementContaineranalysisV1alpha1].
  /// [predicateType] "https://slsa.dev/provenance/v0.1" for SlsaProvenance.
  /// [provenance] Generic Grafeas provenance.
  /// [slsaProvenance] SLSA 0.1 provenance.
  /// [slsaProvenanceZeroTwo] SLSA 0.2 provenance.
  /// [subject] subject is the subjects of the intoto statement
  /// [type] Always "https://in-toto.io/Statement/v0.1".
  InTotoStatementContaineranalysisV1alpha1({
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
      'provenance':
          ?pulumi.Input.mapOptionalInputValue<
            InTotoProvenanceContaineranalysisV1alpha1,
            Map<String, dynamic>
          >(provenance, (value) => value.toMap()),
      'slsaProvenance':
          ?pulumi.Input.mapOptionalInputValue<
            SlsaProvenanceContaineranalysisV1alpha1,
            Map<String, dynamic>
          >(slsaProvenance, (value) => value.toMap()),
      'slsaProvenanceZeroTwo':
          ?pulumi.Input.mapOptionalInputValue<
            SlsaProvenanceZeroTwoContaineranalysisV1alpha1,
            Map<String, dynamic>
          >(slsaProvenanceZeroTwo, (value) => value.toMap()),
      'subject':
          ?pulumi.Input.mapOptionalInputValue<
            List<SubjectContaineranalysisV1alpha1>,
            List<Map<String, dynamic>>
          >(
            subject,
            (value) =>
                pulumi.Input.encodeList<
                  SubjectContaineranalysisV1alpha1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'type': ?type,
    };
  }

  factory InTotoStatementContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return InTotoStatementContaineranalysisV1alpha1(
      predicateType: (() {
        final guardedValue = map['predicateType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provenance: (() {
        final guardedValue = map['provenance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InTotoProvenanceContaineranalysisV1alpha1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      slsaProvenance: (() {
        final guardedValue = map['slsaProvenance'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SlsaProvenanceContaineranalysisV1alpha1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      slsaProvenanceZeroTwo: (() {
        final guardedValue = map['slsaProvenanceZeroTwo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SlsaProvenanceZeroTwoContaineranalysisV1alpha1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      subject: (() {
        final guardedValue = map['subject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SubjectContaineranalysisV1alpha1>(
            guardedValue,
            (value) => SubjectContaineranalysisV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
