// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_containeranalysis_v1alpha1.dart';
import 'in_toto_statement_containeranalysis_v1alpha1.dart';

/// An occurrence describing an attestation on a resource
class DSSEAttestationOccurrenceContaineranalysisV1alpha1 {
  /// If doing something security critical, make sure to verify the signatures in this metadata.
  final pulumi.Input<EnvelopeContaineranalysisV1alpha1>? envelope;
  final pulumi.Input<InTotoStatementContaineranalysisV1alpha1>? statement;

  /// Creates a new [DSSEAttestationOccurrenceContaineranalysisV1alpha1].
  /// [envelope] If doing something security critical, make sure to verify the signatures in this metadata.
  /// [statement] Optional.
  DSSEAttestationOccurrenceContaineranalysisV1alpha1({
    this.envelope,
    this.statement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envelope': ?pulumi.Input.mapOptionalInputValue<EnvelopeContaineranalysisV1alpha1, Map<String, dynamic>>(envelope, (value) => value.toMap()),
      'statement': ?pulumi.Input.mapOptionalInputValue<InTotoStatementContaineranalysisV1alpha1, Map<String, dynamic>>(statement, (value) => value.toMap()),
    };
  }

  factory DSSEAttestationOccurrenceContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationOccurrenceContaineranalysisV1alpha1(
      envelope: (() { final guardedValue = map['envelope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvelopeContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statement: (() { final guardedValue = map['statement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InTotoStatementContaineranalysisV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

