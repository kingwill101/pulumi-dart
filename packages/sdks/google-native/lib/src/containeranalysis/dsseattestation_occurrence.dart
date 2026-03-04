// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'envelope.dart';
import 'in_toto_statement.dart';

/// Deprecated. Prefer to use a regular Occurrence, and populate the Envelope at the top level of the Occurrence.
class DSSEAttestationOccurrence {
  /// If doing something security critical, make sure to verify the signatures in this metadata.
  final pulumi.Input<Envelope>? envelope;
  final pulumi.Input<InTotoStatement>? statement;

  /// Creates a new [DSSEAttestationOccurrence].
  /// [envelope] If doing something security critical, make sure to verify the signatures in this metadata.
  /// [statement] Optional.
  DSSEAttestationOccurrence({this.envelope, this.statement});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envelope':
          ?pulumi.Input.mapOptionalInputValue<Envelope, Map<String, dynamic>>(
            envelope,
            (value) => value.toMap(),
          ),
      'statement':
          ?pulumi.Input.mapOptionalInputValue<
            InTotoStatement,
            Map<String, dynamic>
          >(statement, (value) => value.toMap()),
    };
  }

  factory DSSEAttestationOccurrence.fromMap(Map<String, dynamic> map) {
    return DSSEAttestationOccurrence(
      envelope: (() {
        final guardedValue = map['envelope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Envelope.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      statement: (() {
        final guardedValue = map['statement'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InTotoStatement.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
