// ignore_for_file: unused_element, unnecessary_cast

import 'envelope_response_containeranalysis_v1alpha1.dart';
import 'in_toto_statement_response_containeranalysis_v1alpha1.dart';

/// An occurrence describing an attestation on a resource
class DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1 {
  /// If doing something security critical, make sure to verify the signatures in this metadata.
  final EnvelopeResponseContaineranalysisV1alpha1 envelope;
  final InTotoStatementResponseContaineranalysisV1alpha1 statement;

  /// Creates a new [DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1].
  /// [envelope] If doing something security critical, make sure to verify the signatures in this metadata.
  /// [statement] Required.
  DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1({
    required this.envelope,
    required this.statement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envelope': envelope.toMap(),
      'statement': statement.toMap(),
    };
  }

  factory DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1(
      envelope: EnvelopeResponseContaineranalysisV1alpha1.fromMap((map['envelope'] as Map).cast<String, dynamic>()),
      statement: InTotoStatementResponseContaineranalysisV1alpha1.fromMap((map['statement'] as Map).cast<String, dynamic>()),
    );
  }
}

