// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sbom_reference_intoto_predicate.dart';
import 'subject.dart';

/// The actual payload that contains the SBOM Reference data. The payload follows the intoto statement specification. See https://github.com/in-toto/attestation/blob/main/spec/v1.0/statement.md for more details.
class SbomReferenceIntotoPayload {
  /// Additional parameters of the Predicate. Includes the actual data about the SBOM.
  final pulumi.Input<SbomReferenceIntotoPredicate>? predicate;

  /// URI identifying the type of the Predicate.
  final pulumi.Input<String>? predicateType;

  /// Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  final pulumi.Input<List<Subject>>? subject;

  /// Identifier for the schema of the Statement.
  final pulumi.Input<String>? type;

  /// Creates a new [SbomReferenceIntotoPayload].
  /// [predicate] Additional parameters of the Predicate. Includes the actual data about the SBOM.
  /// [predicateType] URI identifying the type of the Predicate.
  /// [subject] Set of software artifacts that the attestation applies to. Each element represents a single software artifact.
  /// [type] Identifier for the schema of the Statement.
  SbomReferenceIntotoPayload({
    this.predicate,
    this.predicateType,
    this.subject,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'predicate':
          ?pulumi.Input.mapOptionalInputValue<
            SbomReferenceIntotoPredicate,
            Map<String, dynamic>
          >(predicate, (value) => value.toMap()),
      'predicateType': ?predicateType,
      'subject':
          ?pulumi.Input.mapOptionalInputValue<
            List<Subject>,
            List<Map<String, dynamic>>
          >(
            subject,
            (value) => pulumi.Input.encodeList<Subject, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'type': ?type,
    };
  }

  factory SbomReferenceIntotoPayload.fromMap(Map<String, dynamic> map) {
    return SbomReferenceIntotoPayload(
      predicate: (() {
        final guardedValue = map['predicate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SbomReferenceIntotoPredicate.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      predicateType: (() {
        final guardedValue = map['predicateType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subject: (() {
        final guardedValue = map['subject'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<Subject>(
            guardedValue,
            (value) => Subject.fromMap((value as Map).cast<String, dynamic>()),
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
