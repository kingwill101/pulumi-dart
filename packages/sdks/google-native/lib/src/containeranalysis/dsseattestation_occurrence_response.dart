// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope_response.dart';
import 'in_toto_statement_response.dart';

/// Deprecated. Prefer to use a regular Occurrence, and populate the Envelope at the top level of the Occurrence.
class DSSEAttestationOccurrenceResponse {
  /// If doing something security critical, make sure to verify the signatures in this metadata.
  final pulumi.Input<EnvelopeResponse> envelope;
  final pulumi.Input<InTotoStatementResponse> statement;

  /// Creates a new [DSSEAttestationOccurrenceResponse].
  /// [envelope] If doing something security critical, make sure to verify the signatures in this metadata.
  /// [statement] Required.
  const DSSEAttestationOccurrenceResponse({
    required this.envelope,
    required this.statement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envelope': pulumi.Input.mapInputValue<EnvelopeResponse, Map<String, dynamic>>(envelope, (value) => value.toMap()),
      'statement': pulumi.Input.mapInputValue<InTotoStatementResponse, Map<String, dynamic>>(statement, (value) => value.toMap()),
    };
  }

  factory DSSEAttestationOccurrenceResponse.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationOccurrenceResponse(
      envelope: pulumi.Input.fromValue(EnvelopeResponse.fromMap((map['envelope']! as Map).cast<String, dynamic>())),
      statement: pulumi.Input.fromValue(InTotoStatementResponse.fromMap((map['statement']! as Map).cast<String, dynamic>())),
    );
  }
}

