// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_response_containeranalysis_v1alpha1.dart';
import 'in_toto_statement_response_containeranalysis_v1alpha1.dart';

/// An occurrence describing an attestation on a resource
class DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1 {
  /// If doing something security critical, make sure to verify the signatures in this metadata.
  final pulumi.Input<EnvelopeResponseContaineranalysisV1alpha1> envelope;
  final pulumi.Input<InTotoStatementResponseContaineranalysisV1alpha1> statement;

  /// Creates a new [DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1].
  /// [envelope] If doing something security critical, make sure to verify the signatures in this metadata.
  /// [statement] Required.
  const DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1({
    required this.envelope,
    required this.statement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envelope': pulumi.Input.mapInputValue<EnvelopeResponseContaineranalysisV1alpha1, Map<String, dynamic>>(envelope, (value) => value.toMap()),
      'statement': pulumi.Input.mapInputValue<InTotoStatementResponseContaineranalysisV1alpha1, Map<String, dynamic>>(statement, (value) => value.toMap()),
    };
  }

  factory DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationOccurrenceResponseContaineranalysisV1alpha1(
      envelope: pulumi.Input.fromValue(EnvelopeResponseContaineranalysisV1alpha1.fromMap((map['envelope']! as Map).cast<String, dynamic>())),
      statement: pulumi.Input.fromValue(InTotoStatementResponseContaineranalysisV1alpha1.fromMap((map['statement']! as Map).cast<String, dynamic>())),
    );
  }
}

